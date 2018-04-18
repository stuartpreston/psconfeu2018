#
# Cookbook:: demo
# Recipe:: demo7
#
# Copyright:: 2018, Stuart Preston, All Rights Reserved.

50.times do |i|
  ruby_block "iteration #{i}" do
    block do
      puts powershell_exec("Get-Culture | Select DisplayName").result
    end
    action :run
  end
end
