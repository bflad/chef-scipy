
default['scipy']['install_type'] = "package"

case node['platform_family']
when "debian"
  if node['platform'] == "ubuntu" && node['platform_version'] == "12.04"
    default['scipy']['packages'] = [
      ["gfortran", nil],
      ["liblapack-dev", nil],
      ["libopenblas-dev", nil],
      ["python-dev", nil],
      ["python-matplotlib", nil],
      ["python-nose", nil],
      ["python-numpy", nil],
      ["python-sympy", nil],
    ]
    default['scipy']['pip_packages'] = [
      ["ipython", nil],
      ["scipy", nil],
      ["pandas", nil],
    ]
  else
    default['scipy']['packages'] = [
      ["ipython", nil],
      ["ipython-notebook", nil],
      ["python-numpy", nil],
      ["python-scipy", nil],
      ["python-matplotlib", nil],
      ["python-nose", nil],
      ["python-pandas", nil],
      ["python-sympy", nil]
    ]
    default['scipy']['pip_packages'] = []
  end
when "fedora"
  default['scipy']['packages'] = [
    ["ipython", nil],
    ["numpy", nil],
    ["scipy", nil],
    ["python-matplotlib", nil],
    ["python-nose", nil],
    ["python-pandas", nil],
    ["sympy", nil],
  ]
  default['scipy']['pip_packages'] = []
when "gentoo"
  default['scipy']['packages'] = [
    ['>=dev-python/ipython-0.13', nil],
    ['>=dev-python/matplotlib-1.1', nil],
    ['>=dev-python/nose-1.1', nil],
    ['>=dev-python/numpy-1.6', nil],
    ['>=dev-python/pandas-0.8', nil],
    ['>=dev-python/sympy-0.7', nil],
    ['>=sci-libs/scipy-0.10', nil]
  ]
  default['scipy']['pip_packages'] = []
when "rhel"
  default['scipy']['packages'] = [
    ["blas-devel", nil],
    ["freetype-devel", nil],
    ["lapack-devel", nil],
    ["libpng-devel", nil],
    ["python-devel", nil]
  ]
  default['scipy']['pip_packages'] = [
    ["ipython", nil],
    ["numpy", nil],
    ["scipy", nil],
    ["matplotlib", nil],
    ["nose", nil],
    ["pandas", nil],
    ["sympy", nil]
  ]
end