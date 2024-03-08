param iotHubName string
param skuName string 
param capacitySize int
param storageAccountName string
param location string = resourceGroup().location

resource iothub 'Microsoft.Devices/IotHubs@2021-07-01' = {
  name: iotHubName
  location: location
  sku: {
    name: skuName
    capacity: capacitySize
  }
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: '${storageAccountName}${uniqueString(resourceGroup().id)}'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

