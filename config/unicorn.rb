root = "/home/fsftn/apps/Election-2014/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.ianda.sock"
worker_processes 11
timeout 600

