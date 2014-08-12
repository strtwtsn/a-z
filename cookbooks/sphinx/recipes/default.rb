remote_file "sphinx" do
path "/home/ubuntu/downloads/sphinxsearch_2.1.9-release-0ubuntu11~trusty_amd64.deb"
source "http://sphinxsearch.com/files/sphinxsearch_2.1.9-release-0ubuntu11~trusty_amd64.deb"
end

bash "Install sphinx" do
user "root"
code <<-EOH
cd /home/ubuntu/downloads
dpkg -i sphinxsearch_2.1.9-release-0ubuntu11~trusty_amd64.deb
EOH
end
