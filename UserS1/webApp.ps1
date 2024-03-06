$ResourceGroupName = "DevOpsPaket"

param (
    [Parameter(Mandatory = $true)]
    [string] $ResourceGroupName
)

# Deploy the Bicep template
$deploymentName = "AppServiceDeployment" + (Get-Date -Format "yyyyMMddHHmmss")
New-AzResourceGroupDeployment `
    -Name $deploymentName `
    -ResourceGroupName $ResourceGroupName `
    -TemplateFile "webApp.bicep" `
    -location (Get-AzResourceGroup -Name $ResourceGroupName).Location
