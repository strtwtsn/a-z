bash "Add repo" do
user "root"
code <<-EOH
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
EOH
end


template "/etc/apt/sources.list.d/passenger.list" do
source "passenger.list.erb"
end

bash "Install nginx with passenger" do
user "root"
code <<-EOH
sudo apt-get update
sudo apt-get install -y nginx-extras passenger
EOH
end

service "nginx" do
  service_name "nginx"
  supports :restart => true, :status => true, :reload => true
end

