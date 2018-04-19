install_url = "https://github.com/PowerShell/PowerShell/releases/download/v#{node['pwsh']['installerversion']}-preview.1/powershell_#{node['pwsh']['installerversion']}-preview.1-1.ubuntu.16.04_amd64.deb"
installer_path = "/tmp/powershell_#{node['pwsh']['installerversion']}-preview.1-1.ubuntu.16.04_amd64.deb"

remote_file installer_path do
  source install_url
  mode 0700
end

apt_package %w(libc6 libgcc1 libgssapi-krb5-2 liblttng-ust0 libstdc++6 libcurl3 libunwind8 libuuid1 zlib1g libssl1.0.0 libicu55 curl gnupg apt-transport-https liburcu4 liblttng-ust-ctl2) do
  action :install
end

dpkg_package 'install pwsh' do
  source installer_path
end
