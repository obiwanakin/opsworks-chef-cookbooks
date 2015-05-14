node[:deploy].each do |application, deploy|
  script "migrate" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current/server"
    code "php artisan migrate"
  end
end
