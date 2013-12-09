
default['scipy']['install_type'] = 'package'

case node['platform_family']
when 'debian'
  if node['platform'] == 'ubuntu' && node['platform_version'] == '12.04'
    default['scipy']['packages'] = %w{
      gfortran
      liblapack-dev
      libopenblas-dev
      python-dev
      python-matplotlib
      python-nose
      python-numpy
      python-sympy
    }
    default['scipy']['pip_packages'] = %w{
      ipython>=0.13
      scipy>=0.10
      pandas>=0.8
    }
  else
    default['scipy']['packages'] = %w{
      ipython
      ipython-notebook
      python-numpy
      python-scipy
      python-matplotlib
      python-nose
      python-pandas
      python-sympy
    }
    default['scipy']['pip_packages'] = %w{}
  end
when 'fedora'
  default['scipy']['packages'] = %w{
    ipython
    numpy
    scipy
    python-matplotlib
    python-nose
    python-pandas
    sympy
  }
  default['scipy']['pip_packages'] = %w{}
when 'gentoo'
  default['scipy']['packages'] = %w{
    '>=dev-python/ipython-0.13'
    '>=dev-python/matplotlib-1.1'
    '>=dev-python/nose-1.1'
    '>=dev-python/numpy-1.6'
    '>=dev-python/pandas-0.8'
    '>=dev-python/sympy-0.7'
    '>=sci-libs/scipy-0.10'
  }
  default['scipy']['pip_packages'] = %w{}
when 'rhel'
  default['scipy']['packages'] = %w{
    blas-devel
    freetype-devel
    lapack-devel
    libpng-devel
    python-devel
  }
  default['scipy']['pip_packages'] = %w{
    ipython>=0.13
    numpy>=1.6
    scipy>=0.10
    matplotlib>=1.1
    nose>=1.1
    pandas>=0.8
    sympy>=0.7
  }
end
