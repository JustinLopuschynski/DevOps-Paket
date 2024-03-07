param iotHubName string
param skuName string 
param capacitySize int
param location string = resourceGroup().location

resource iotHub 'Microsoft.Devices/IotHubs@2021-07-01' = {
  name: iotHubName
  location: location
  sku: {
    name: skuName
    capacity: capacitySize
  }
}
