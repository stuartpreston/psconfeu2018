install_url = "https://github.com/PowerShell/PowerShell/releases/download/v#{node['pwsh']['installerversion']}-preview.1/powershell-#{node['pwsh']['installerversion']}.preview.1-1.rhel.7.x86_64.rpm"
installer_path = "/tmp/powershell_#{node['pwsh']['installerversion']}.preview.1-1.rhel.7.x86_64.rpm"

remote_file installer_path do
  source install_url
  mode 0700
end

yum_package 'install pwsh' do
  source installer_path
end

