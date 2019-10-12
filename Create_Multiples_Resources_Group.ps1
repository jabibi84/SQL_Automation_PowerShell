$location = "southcentralus"

$resourcegroup = @(
"ResourceGroup_1", 
"ResourceGroup_2", 
"ResourceGroup_3" 
)
foreach ($rg in $resourcegroup)
{
    $result = New-AzResourceGroup -Name $rg -Location $location
    if ($result.ProvisioningState -eq "Succeeded")
    {
        Write-Host "Resource Group:" $rg ", has been create success"
    }
    else 
    {
        Write-Host "Resource Group:" $rg " FAIL" 
    }    
}