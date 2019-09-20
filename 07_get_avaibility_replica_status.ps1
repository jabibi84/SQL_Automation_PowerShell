#20190918 - Data & AI Revolution - Microsoft Argentina
#sqlpassargentina 
#Author: Javier Londoño (javierlondono@gmail.com) 

$ServerList = @(
"server_01", 
"server_03", 
"server_04" 
)
foreach ($Server in $ServerList)
{
	Get-AvailabilityReplicaStatus -ComputerName $Server
}

Function Get-AvailabilityReplicaStatus  
{ param 
(
	$computername 
) 
	 Get-Cluster -Name $computername | Get-ClusterResource | Where-Object {$_.ResourceType -eq "SQL Server Availability Group"} | Select-Object *, @{Label="Server";Expression={$ComputerName}} 
}
