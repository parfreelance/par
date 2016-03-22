environment ENV['RACK_ENV']
workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads 0,16 # 4-6
preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

#Delayed Jobs for background jobs
#on_worker_boot do
#  @delayed_job_pid ||= spawn("bundle exec rake jobs:work")
#  ActiveRecord::Base.establish_connection
#end