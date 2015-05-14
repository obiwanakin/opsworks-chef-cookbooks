node[:deploy].each do |application, deploy|
  script "install_composer" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current/server"
    code "php artisan migrate"
  end
end
