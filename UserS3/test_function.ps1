# Set variables
$iotHubName = "iotJustinHuby4ds5blbrtyia"
$deviceId = "iotJustin"
$message = "$PSScriptRoot\message.json"


Connect-AzAccount
$subcriptionId = Read-Host 'subcription ID'
Select-AzSubscription -SubscriptionId $subcriptionId

# Send a test message to the IoT Hub
Write-Host "Sending test message to IoT Hub..."
az iot device send-d2c-message -n $iotHubName -d $deviceId --props '$.ct=application/json;$.ce=utf-8' --data-file-path $message
Write-Host "Sending complete"