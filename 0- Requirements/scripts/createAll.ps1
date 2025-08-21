$SubscriptionId = '981b86a9-a9fc-490a-bb16-4a3d8e6561c0'
$resourceGroupName = "openai-workshop"
$location = "swedencentral"

# Set subscription 
Set-AzContext -SubscriptionId $subscriptionId 
# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile deployAll.bicep -WarningAction:SilentlyContinue