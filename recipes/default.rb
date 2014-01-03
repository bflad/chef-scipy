
if node['scipy']['install_type'] == 'source'
  include_recipe 'scipy::source'
else
  include_recipe 'apt' if node['platform'] == 'ubuntu'
  include_recipe 'yum-epel' if node['platform_family'] == 'rhel'
  include_recipe 'python::pip'
  include_recipe 'scipy::package'
end

python_pip 'ipython' do
  action :upgrade
  only_if { node['platform'] == 'fedora' && node['platform_version'] <= 17 }
end
