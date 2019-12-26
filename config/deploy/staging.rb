server_host = "staging.lendingwise.com"
server_user = "ubuntu"
deploy_dir = "/var/www/public_html"
legacy_dir = "/home/theloanp"

set :use_sudo, false
set :copy_cache, true
set :deploy_to, deploy_dir
set :pty, true
role :app, "#{server_user}@#{server_host}"
server server_host, user: server_user, roles: %w{app}
  
namespace :deploy do
    task :restart do
        # no-op
    end

    desc "Upload config.php"
    task :upload_config do
        on roles(:all) do
            upload! "config/config.php", "#{fetch(:deploy_to)}/releases/config.php"
        end
    end

    desc "New dirs and symlinks"
    task :create_remote_dirs do
        on roles(:app) do
            as "#{server_user}" do
                # create cache dirs
                sudo "mkdir -p #{current_path}/css/cache"
                sudo "mkdir -p #{current_path}/js/cache"
                sudo "mkdir -p #{current_path}/scripts/cache"

                # add symlink to www path
                sudo "ln -sfn #{current_path} #{deploy_dir}/www"

                # touch temp files
                sudo "touch #{fetch(:deploy_to)}/releases/debug.php"

                # add symlinks to legacy dir 
                sudo "mkdir -p #{legacy_dir}"
                sudo "ln -sfn #{current_path} #{legacy_dir}/public_html"
                sudo "ln -sfn #{current_path} #{legacy_dir}/www"
            end
        end
    end

    after :finishing, :upload_config do
        invoke "deploy:create_remote_dirs"
        print "Deploy Done"
    end
end