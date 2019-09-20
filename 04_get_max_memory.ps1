#20190918 - Data & AI Revolution - Microsoft Argentina
#sqlpassargentina 
#Author: Javier Londoño (javierlondono@gmail.com)
$ServerList = @(
"server_01", 
"server_03", 
"server_04" 
)
$listmemorysettings = @() 
foreach ($Server in $ServerList)
{
	$listmemorysettings = $listmemorysettings +(sqlcmd -E -S $system -d "master"  -Q  "SET NOCOUNT On; SELECT InstanceName = @@servername,  value_in_use FROM sys.configurations WHERE name = 'Max Server Memory (MB)'" -W -w 1024 -s ”,”) 	
    
}
$listmemorysettings  |  out-file ".\list_memory_setting.txt"
