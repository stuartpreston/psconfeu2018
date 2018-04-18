#
# Cookbook:: demo
# Recipe:: cleanup
#
# Copyright:: 2018, Stuart Preston, All Rights Reserved.

file "#{ENV['HOME']}\\desktop\\psversion.txt" do
  action :delete
end

file "#{Chef::Config[:file_cache_path]}\\xCertificate-3.2.0.0-PSGallery.zip" do
  action :delete
end

directory "#{ENV['PROGRAMW6432']}\\WindowsPowerShell\\Modules\\xCertificate-3.2.0.0-PSGallery" do
  recursive true
  action :delete
end
