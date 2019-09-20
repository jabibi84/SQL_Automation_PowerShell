$ServerList = @(
"server_01", 
"server_02", 
"server_03" 
) 

foreach ($Server in $ServerList)
{
	Invoke-Expression -Command "Robocopy D:\<local_folder_where_file_is_located> '\\$Server\d$\<destination_remote_server_folder>' /E /is"
}

