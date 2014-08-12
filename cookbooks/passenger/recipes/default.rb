gem_package "passenger" do
action :install
end

cd /home/ubuntu/.rvm/gems/ruby-1.9.3-p429/gems/passenger-4.0.5
rvmsudo rake nginx
