#
# Cookbook:: demo
# Recipe:: demo_extra
#
# Copyright:: 2018, Stuart Preston, All Rights Reserved.

cookbook_file "#{Chef::Config[:file_cache_path]}\\WindowsAdminCenter1804.msi" do
  source "WindowsAdminCenter1804.msi"
  action :create
end

windows_package 'Windows Admin Center 1804' do
  source "#{Chef::Config[:file_cache_path]}\\WindowsAdminCenter1804.msi"
  options "SME_PORT=4443 SSL_CERTIFICATE_OPTION=generate"
  action :remove
end
