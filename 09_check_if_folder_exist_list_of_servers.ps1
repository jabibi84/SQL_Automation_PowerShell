$ServerList = @(
"server_01", 
"server_02", 
"server_03" 
) 

foreach ($Server in $ServerList)
{
	#2.	Test if destination path exist on each server -   [Command PowerShell]: Test-path -Path $path
	$path = '\\' + $Server + '\C$\<path_remote_server>\<to_validate_if_exist>'
	Test-path -Path $path
}



