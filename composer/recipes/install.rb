#
# Taken from:
# http://docs.aws.amazon.com/opsworks/latest/userguide/gettingstarted.walkthrough.photoapp.3.html
#
node[:deploy].each do |application, deploy|
  script "install_deps" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current/server"
    code "php composer.phar install"
  end
end
