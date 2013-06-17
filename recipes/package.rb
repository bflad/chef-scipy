
node['scipy']['packages'].each do |p|
  package p
end

node['scipy']['pip_packages'].each do |pp|
  python_pip pp
end
