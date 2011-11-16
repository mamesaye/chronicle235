#---------git-----------------
set :scm, :git	   # Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :branch, "master" 
set :scm_user, 'mamesaye'
set :scm_passphrase, ''
set :repository,  "git@github.com:mamesaye/chronicle235.git"
set :local_repository, "."
set :deploy_via, :remote_cache


#-------------settings---------------------------
# the portal user has all the required permissions, so sudo is not needed
set :use_sudo, false
ssh_options[:paranoid] = false
ssh_options[:forward_agent] = true

# username of the user underwhich capistrano will log in,
set :user, "deploy"	#asset username portal


#----------application---------------------
set :application, "chronicle235"
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
#set :deploy_to, "/home/#{user}/rails/#{application}"
set :deploy_to, "/home/angom/rails_projects235/chronicle235"
#set :deploy_to, "/home/angom/rails_projects/chronicle"

#------------servers------------------------------------
#set :domain, "chronicle"
set :chronicle, "chronicle"
role :app, chronicle
role :web, chronicle
role :db, chronicle, :primary => true


#set :domain, "127.0.0.1:3000"
#role :web, "127.0.0.1:3000"                          # Your HTTP server, Apache/etc
#role :app, "your app-server here"                          # This may be the same as your `Web` server
#role :db,  rails_devel, :primary => true # This is where Rails migrations will run

#role :web, "domain"
#role :app, "domain"
#role :db, "domain", :primary => true


# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts
#--------------passenger----------------------------
# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
   end
 end

#   end
# end

