bash "Install wkhtmltopdf" do
code <<-EOH
git clone --recursive https://github.com/wkhtmltopdf/wkhtmltopdf.git /home/ubuntu/wkhtmltopdf
cd /home/ubuntu/wkhtmltopdf
scripts/build.py trusty-i386
EOH
end
