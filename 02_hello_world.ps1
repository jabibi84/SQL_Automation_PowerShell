#20190918 - Data & AI Revolution - Microsoft Argentina
#sqlpassargentina 
#Author: Javier Londoño (javierlondono@gmail.com)

$ServerList = @(
"server_01", 
"server_03", 
"server_04"
"server_05"
"server_06"
"server_07"
"server_08_"
)
foreach ($Server in $ServerList)
{
	write-host "Hello World:" $server
}