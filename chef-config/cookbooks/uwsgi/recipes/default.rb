execute "uwsgi install" do
    command "pip install uwsgi"
    action :run
end