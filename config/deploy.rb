# config valid for current version and patch releases of Capistrano
lock "~> 3.13.0"

set :application, "hustling_bears"
set :repo_url, "git@github.com:Rajan4436/thehustlingbears.git"
set :branch, 'master'
set :rails_env, :production

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/ubuntu/apps/thehustlingbears"
set :use_sudo, true
# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

set :linked_files, %w{config/database.yml config/master.key}

# Default value for linked_dirs is []
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets tmp/storage public/system public/sitemaps public/assets uploads}

set :bundle_flags, '--deployment'

set :keep_releases, 3
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
namespace :deploy do
  #before :deploy, "deploy:check_revision"
  #after 'deploy:symlink:shared', 'deploy:compile_assets_locally'
  after :finishing, 'deploy:cleanup'
  #before 'deploy:setup_config', 'nginx:remove_default_vhost'
  #after 'deploy:setup_config', 'nginx:reload'
  # before 'deploy:publishing', "sitemap:refresh"
  #after 'deploy:setup_config', 'monit:restart'
  after 'deploy:publishing', 'deploy:restart'

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  # after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  # update crontab on deploy
  # require 'whenever/capistrano'
  #
  # set :whenever_command, "bundle exec whenever"
end