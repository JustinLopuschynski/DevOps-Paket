param (
    [string]$Environment
)
 
# Validate Environment parameter
$validEnvironments = @("dev", "test", "prod")
if (-not ($validEnvironments -contains $Environment)) {
    Write-Error "Invalid environment. Please specify one of the following environments: dev, test, prod"
    exit
}

# Load parameters from YAML file based on environment
$parametersFile = "$PSScriptRoot\${Environment}_parameters.yaml"
if (-not (Test-Path $parametersFile)) {
    Write-Error "Parameter file '$parametersFile' not found."
    exit
}

$parameters = Get-Content -Path $parametersFile | ConvertFrom-Yaml

# Azure login
Connect-AzAccount
$subcriptionId = Read-Host 'Subscription ID'
Select-AzSubscription -SubscriptionId $subcriptionId

$ResourceGroup = "DevOpsPaket"

$iotHubName = $parameters.iotHubName
$skuName = $parameters.skuName
$capacitySize = $parameters.capacitySize
$storageAccountName = $parameters.storageAccountName
$storageContainerName = $parameters.storageContainerName

# Deploy the Bicep template
Write-Output "Deploying resources..."
$bicepParams = @{
    'iotHubName' = $iotHubName
    'skuName' = $skuName
    'capacitySize' = $capacitySize
    'storageAccountName' = $storageAccountName
}

New-AzResourceGroupDeployment -ResourceGroupName $ResourceGroup -TemplateFile "app.json" -TemplateParameterObject $bicepParams -Location "West Europe"

# Wait for deployment to complete
Write-Output "Waiting for deployment to complete..."
Get-AzResourceGroupDeployment -ResourceGroupName $ResourceGroup -Name $Environment 

# Get the connection strings
$iothubConnectionString = (Get-AzResource -ResourceGroupName $ResourceGroup -ResourceName $Environment -ResourceType "Microsoft.Devices/IotHubs").Properties.eventHubEndpoints.events.endpoint
$storageAccountKey = (Get-AzStorageAccountKey -ResourceGroupName $ResourceGroup -Name "iotstorage$($Environment)" | Select-Object -ExpandProperty Value)[0]
$storageAccountConnectionString = "DefaultEndpointsProtocol=https;AccountName=iotstorage$($Environment);AccountKey=$storageAccountKey"

# Send a message to IoT Hub
Write-Output "Sending message to IoT Hub..."
az iot device send-d2c-message --device-id MyDevice --hub-name $Environment --data "Test message from $Environment environment."

# Wait for the message to be processed
Start-Sleep -Seconds 30

# Check if the message is in the Storage Account
Write-Output "Checking if the message is in the Storage Account..."
$storageContext = New-AzStorageContext -ConnectionString $storageAccountConnectionString
$blobList = Get-AzStorageBlob -Context $storageContext -Container $storageContainerName
$blobExists = $blobList.Name -contains "message.txt"
