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
$subcriptionId = Read-Host 'subcription ID'
Select-AzSubscription -SubscriptionId $subcriptionId
$ResourceGroup = "DevOpsPaket"

$iotHubName = $parameters.iotHubName
$skuName = $parameters.skuName
$capacitySize = $parameters.capacitySize
$storageAccountName = $parameters.storageAccountName
$storageContainerName = $parameters.storageContainerName


$bicepParams = @{
    'iotHubName' = $iotHubName
    'skuName' = $skuName
    'capacitySize' = $capacitySize
    'storageAccountName' = $storageAccountName
    'storageContainerName' = $storageContainerName
}

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile "app.json" -TemplateParameterObject $bicepParams -Location "West Europe"