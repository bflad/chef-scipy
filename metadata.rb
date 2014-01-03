name              'scipy'
maintainer        'Brian Flad'
maintainer_email  'bflad417@gmail.com'
license           'Apache 2.0'
description       'Installs SciPy stack'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '0.3.1'
recipe            'scipy', 'Installs SciPy'
recipe            'scipy::package', 'Installs SciPy via packages'
recipe            'scipy::source', 'Installs SciPy via source'

%w{ amazon centos debian fedora redhat scientific ubuntu }.each do |os|
  supports os
end

%w{ apt python yum-epel }.each do |cb|
  depends cb
end
