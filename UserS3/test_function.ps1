# Set variables
$iotHubName = "iotJustinLHuby4ds5blbrtyia"
$deviceId = "iotJustin"
$message = "$PSScriptRoot\message.json"


Connect-AzAccount
$subcriptionId = Read-Host 'subcription ID'
Select-AzSubscription -SubscriptionId $subcriptionId

# Send a test message to the IoT Hub
Write-Host "Sending test message to IoT Hub..."
az iot device send-d2c-message --hub-name $iotHubName --device-id $deviceId --data $message 

