install_url = "https://github.com/PowerShell/PowerShell/releases/download/v#{node['pwsh']['installerversion']}-preview.1/PowerShell-#{node['pwsh']['installerversion']}-preview.1-win-x64.msi"
installer_path = "#{ENV['TEMP']}\\PowerShell-#{node['pwsh']['installerversion']}-preview.1-win-x64.msi"

remote_file installer_path do
  source install_url
end

windows_package installer_path do
  action :install
end

