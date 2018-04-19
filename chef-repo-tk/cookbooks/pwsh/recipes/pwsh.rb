case node[:platform]
when 'ubuntu', 'debian'
  include_recipe '::_install_deb'
when 'centos', 'redhat'
    include_recipe '::_install_rpm'
when 'windows'
    include_recipe '::_install_windows'
end
