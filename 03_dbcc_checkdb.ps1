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
	$SqlCmdOutput1 = sqlcmd -E -S $system -d "master" -Q "SELECT maximum FROM sys.configurations WHERE name = 'Max Server Memory (MB)'"	
    $filename = $system.Replace("\", "_")
	$SqlCmdOutput1  |  out-file ".\$filename_server.txt"
}

Select-String -Pattern "CHECKDB found" -Path .\*.txt | out-file ".\resultado.csv"