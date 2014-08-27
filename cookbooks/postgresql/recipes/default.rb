template "/etc/apt/sources.list.d/pgsql.list" do
source "pgsql.list.erb"
end

bash "Install postgresql client" do
user "root"
code <<-EOH
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-9.2 postgresql-server-dev-9.2
EOH
end

service "postgresql" do
  service_name "postgresql"
  supports :restart => true, :status => true, :reload => true
end
