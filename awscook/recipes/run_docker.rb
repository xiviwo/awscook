

# Run Nginx 
script "run_nginx_container" do  
  interpreter "bash"
  user "root"
  code <<-EOH

    docker run -p 80:80 --name=nginx -d #{node[:img][:name]}
  EOH
end