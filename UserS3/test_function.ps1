# Set variables
$iotHubName = "demoJustinHuby4ds5blbrtyia"
$deviceId = "demoJustin"
$message = "Test message"
$storageAccountName = "demojustiny4ds5blbrtyia"
$storageContainerName = "demojustinresults"

Connect-AzAccount
$subcriptionId = Read-Host 'subcription ID'
Select-AzSubscription -SubscriptionId $subcriptionId
$ResourceGroup = "DevOpsPaket"

# Send a test message to the IoT Hub
Write-Host "Sending test message to IoT Hub..."
az iot device send-d2c-message --hub-name $iotHubName --device-id $deviceId --data $message

# Wait for a few seconds to allow the message to be processed and stored
Start-Sleep -Seconds 60

# List blobs in the storage container to see if the message is stored
Write-Host "Checking storage container for the message..."
$blobs = az storage blob list --resourceGroupName $ResourceGroup --account-name $storageAccountName --container-name $storageContainerName --query '[].name' --output tsv 

# Check if the test message blob exists
if ($blobs -contains "Test message") {
    Write-Host "Test message found in storage container."
} else {
    Write-Host "Test message not found in storage container."
}
