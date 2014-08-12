package "libmysqlclient-dev"
package "libmysql++-dev"
package "libmysqlclient18"



remote_file "/usr/local/src/sphinx-2.1.4-release.tar.gz" do
source "http://sphinxsearch.com/files/sphinx-2.1.4-release.tar.gz"
end

bash "Extract and install sphinx" do
user "root"
cwd "/usr/local/src"
code <<-EOH
tar xvzf sphinx-2.1.4-release.tar.gz
cd sphinx-2.1.4-release
./configure --with-pgsql --with-mysql
make
checkinstall --pkgname sphinx --pkgversion 2.1.4-src --default
EOH
end

