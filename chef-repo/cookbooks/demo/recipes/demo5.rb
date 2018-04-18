#
# Cookbook:: demo
# Recipe:: demo5
#
# Copyright:: 2018, Stuart Preston, All Rights Reserved.

50.times do |i|
  ruby_block "iteration #{i}" do
    block do
      puts powershell_out("Get-Culture | Select DisplayName").stdout
    end
    action :run
  end
end
