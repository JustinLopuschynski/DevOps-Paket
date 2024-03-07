param iotHubName string
param skuName string 
param capacitySize int
param storageAccountName string
param storageContainerName string 
param storageAccountConnectionString string 
param location string = resourceGroup().location

resource iotHub 'Microsoft.Devices/IotHubs@2021-07-01' = {
  name: iotHubName
  location: location
  sku: {
    name: skuName
    capacity: capacitySize
  }
  properties: {
    enableFileUploadNotifications: false
  }
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource iothubroute 'Microsoft.Devices/routingEndpoints/IotHub@2021-07-01' = {
  name: '${iotHubName}/to-storage'
  location: location
  properties: {
    endpointType: 'azurestoragecontainer'
    endpointResourceGroup: resourceGroup().name
    storageContainers: storageContainerName
    connectionString: storageAccountConnectionString
    isEnable: true
    }
    dependsOn: [
      iotHub
      storageAccount
    ]
}
output iotHubConnectionString string = iotHub.properties.eventHubEndpoints.events.endpoint
