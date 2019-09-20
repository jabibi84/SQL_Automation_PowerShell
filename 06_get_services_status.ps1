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
	Get-ServiceState -ComputerName $Server -DisplayName "SQL Server"
}

function Get-ServiceState {
[cmdletbinding()]
param (
$ComputerName,
$DisplayName
)            

    Get-WmiObject -Class Win32_Service -ComputerName $ComputerName |
	? { $_.DisplayName -like $DisplayName } | select DisplayName, StartName, State             
}

