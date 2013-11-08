
node['scipy']['packages'].each do |p|
  package p[0] do
    version p[1]
  end
end

node['scipy']['pip_packages'].each do |pp|
  python_pip pp[0] do
    version pp[1]
  end
end
