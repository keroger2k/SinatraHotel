require 'rubygems'
require 'rake'
require 'sinatra/activerecord/rake'

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/app')

require 'boot'

desc "Start the server"
task :start do
  Kernel.exec "bundle exec foreman start"
end

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -r ./app/boot"
end