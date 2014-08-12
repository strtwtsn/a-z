remote_file "Download wkhtml" do
path "/home/ubuntu/downloads/wkhtmltox-0.12.1_linux-trusty-amd64.deb"
source "http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb"
end

bash "Install wkhtml" do
user "root"
code <<-EOH
cd /home/ubuntu/downloads
dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb
EOH
end


