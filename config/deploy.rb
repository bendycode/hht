role :web, "vps114.speedyrails.ca"
role :app, "vps114.speedyrails.ca"
role :db,  "vps114.speedyrails.ca", :primary => true

set :application, "hht"

set :deploy_to, "/var/www/apps/#{application}"

set :user, "deploy"
set :password, ""
set :group, "www-data"
  
set :deploy_via, :export
set :repository, "http://svn.vps114.speedyrails.ca/#{application}/trunk"
set :scm_username, "deploy"
set :scm_password, ""

namespace :deploy do

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{deploy_to}/#{shared_dir}/tmp/restart.txt"
  end
  
  desc "Install Gem Bundle"
  task :bundle_install, :roles => :app do
    run "sudo bundle install --gemfile #{deploy_to}/current/Gemfile"
  end

  desc "Tasks to execute after code update"
  task :after_update_code, :roles => [:app, :db] do
    # relink shared deployment database configuration
    run "ln -nfs #{deploy_to}/#{shared_dir}/config/database.yml #{release_path}/config/database.yml"

    # relink shared tmp dir (for session and cache data)
    sudo "rm -rf #{release_path}/tmp"  # technically shouldn't be in svn
    run "ln -nfs #{deploy_to}/#{shared_dir}/tmp #{release_path}/tmp"
  end

end