#
# Cookbook:: demo
# Recipe:: demo2
#
# Copyright:: 2018, Stuart Preston, All Rights Reserved.

cookbook_file "#{Chef::Config[:file_cache_path]}\\xCertificate-3.2.0.0-PSGallery.zip" do
  source 'xCertificate-3.2.0.0-PSGallery.zip'
  action :create
end

dsc_resource 'example' do
  resource :archive
  property :ensure, "Present"
  property :path, "#{Chef::Config[:file_cache_path]}\\xCertificate-3.2.0.0-PSGallery.zip"
  property :destination, "#{ENV['PROGRAMW6432']}\\WindowsPowerShell\\Modules"
end
