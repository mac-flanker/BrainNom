require 'bundler/capistrano'

set :application, "BrainNom"
set :repository,  "git@github.com:mac-flanker/BrainNom.git"

set :keep_releases, 3

set :scm, :git
set :deploy_via, :remote_cache
set :branch, "master"
set :user, "mike"

set :sudo_prompt, ""

set :deploy_to, "/var/www/#{application}"

role :web, "localhost"                          # Your HTTP server, Apache/etc
role :app, "localhost"                          # This may be the same as your `Web` server
role :db,  "localhost", :primary => true # This is where Rails migrations will run

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
