#
# Cookbook:: demo
# Recipe:: demo1
#
# Copyright:: 2018, Stuart Preston, All Rights Reserved.

cookbook_file "#{Chef::Config[:file_cache_path]}\\xCertificate-3.2.0.0-PSGallery.zip" do
  source 'xCertificate-3.2.0.0-PSGallery.zip'
  action :create
end

dsc_script 'install xCertificate' do
    code <<-EOH
      Archive xCertificate
      {
        ensure = 'Present'
        path = "#{Chef::Config[:file_cache_path]}\\xCertificate-3.2.0.0-PSGallery.zip"
        destination = "#{ENV['PROGRAMW6432']}\\WindowsPowerShell\\Modules"
      }
    EOH
end
