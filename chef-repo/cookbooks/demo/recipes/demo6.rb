#
# THIS IS NOT A CHEF RECIPE!
#
# powershell_exec example

$environments=@{Dev = 'DEV01WS'; Staging = 'STG01WS'; Live = 'LIV01WS' }; $environments

execution = powershell_exec("
$environments=@{Dev = 'DEV01WS'; Staging = 'STG01WS'; Live = 'LIV01WS' }; $environments
")
