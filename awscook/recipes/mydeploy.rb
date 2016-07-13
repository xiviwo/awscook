

# Pull my Nginx from AWS repo
script "pull_nginx_image" do  
  interpreter "bash"
  user "root"
  code <<-EOH
	export AWS_DEFAULT_REGION=#{node[:awscli][:region]}
    `aws ecr get-login --region #{node[:awscli][:region]}`
    docker pull #{node[:img][:name]}
  EOH
end 