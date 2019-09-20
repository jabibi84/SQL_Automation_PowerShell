#20190918 - Data & AI Revolution - Microsoft Argentina
#sqlpassargentina 
#Author: Javier Londoño (javierlondono@gmail.com)

#login in a specific subscription, without -subscriptionid parameter will use a default 
Login-AzureRmAccount -SubscriptionId $Subscription.Id	

#set as context a specific subscription 
Set-AzureRmContext -SubscriptionId $Subscription.Id		

#get resources list from subscription set as previous step 
$ListResourceGroup = Get-AzureRmResourceGroup
foreach ($ResourceGroup in $ListResourceGroup.ResourceGroupName)
{
	#get SQL server present on resource group of loop and subscription set
	$Servers= Get-azurermsqlserver -ResourceGroupName $ResourceGroup.ResourceGroupName -EA "SilentlyContinue"
	foreach( $server in $Servers)
	{
		#get SQL Paas databases present in Subscription + Resource Group + Server SQL
		$database = get-azurermsqldatabase -ResourceGroupName $ResourceGroupresourcegroupname -ServerName $server.ServerName -EA "SilentlyContinue"
		foreach ($database in $databasesInPool)
		{

		}


	}
}