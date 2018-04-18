#
# Cookbook:: demo
# Recipe:: demo4
#
# Copyright:: 2018, Stuart Preston, All Rights Reserved.

powershell_script 'Do something with $PSVersionTable' do
  code <<-EOH
  $PSVersionTable | Out-File -FilePath c:\\users\\spreston\\desktop\\psversion.txt
  EOH
end
