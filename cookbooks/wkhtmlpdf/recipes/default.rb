remote_file "Download wkhtml" do
path "/home/ubuntu/downloads/wkhtmltox-0.12.1_linux-trusty-i386.deb"
source "http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.1/wkhtmltox-0.12.1_linux-trusty-i386.deb"
end

bash "Install wkhtml"
user "root"
code <<-EOH
cd /home/ubuntu/downloads
dpkg -i wkhtmltox-0.12.1_linux-trusty-i386.deb
EOH
end


