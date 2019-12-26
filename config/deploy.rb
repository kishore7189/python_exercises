# config valid for current version and patch releases of Capistrano
#lock "~> 3.10.2"

set :application, "lendingwise"
set :repo_url, "git@github.com:chris-main/MLP.git"

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 3

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

set :ssh_options, {
    forward_agent: true,
    keys: [File.join(ENV["HOME"], ".ssh", "mlp.pem")],
    auth_methods: %w(publickey),
    user: "ubuntu",
    port: 2266
}