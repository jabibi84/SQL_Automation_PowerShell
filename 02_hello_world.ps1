#20190918 - Data & AI Revolution - Microsoft Argentina
#sqlpassargentina 
#Author: Javier Londoño (javierlondono@gmail.com)

$ServerList = @(
"server_01", 
"server_02", 
"server_03"
"server_04"
"server_05"
)
foreach ($Server in $ServerList)
{
	write-host "Hello World:" $server
}