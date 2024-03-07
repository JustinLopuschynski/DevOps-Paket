param location string = resourceGroup().location
param appName string
param appServicePlan string
param tier string 

 
resource ServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: appName
  location: location
  sku: {
    name: 'B1'
    tier: tier
  }
}
 
resource appService 'Microsoft.Web/sites@2021-02-01' = {
  name: appServicePlan
  location: location
  kind: 'app'
  properties: {
    serverFarmId: ServicePlan.id
    httpsOnly: false
  }
}
 