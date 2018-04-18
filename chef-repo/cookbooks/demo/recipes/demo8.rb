#
# Cookbook:: demo
# Recipe:: demo8
#
# Copyright:: 2018, Stuart Preston, All Rights Reserved.

powershell_custom 'Do something with $PSVersionTable' do
  code <<-EOH
  $PSVersionTable
  EOH
end
