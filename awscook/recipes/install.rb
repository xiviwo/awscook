

docker_service 'default' do
  action [:create, :start]
end



include_recipe 'python::pip'

python_pip 'awscli' do

  action :install
end

