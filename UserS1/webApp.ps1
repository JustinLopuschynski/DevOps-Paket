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

$ResourceGroup = "DevOpsPaket"

# Azure login
Connect-AzAccount
$subcriptionId = Read-Host 'subcription ID'
Select-AzSubscription -SubscriptionId $subcriptionId

$appName = $parameters.appName
$appServicePlan = $parameters.appServicePlan
$tier = $parameters.tier

$bicepParams = @{
    'appName' = $appName
    'appServicePlan' = $appServicePlan
    'tier' = $tier
}

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile "webApp.json" -TemplateParameterObject $bicepParams -Location "West Europe"

Write-Host "Deployment completed for all environments."
