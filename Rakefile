require 'rubygems'
require 'rake'
require 'yaml'

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/app')

require 'boot'

desc "Start the server"
task :start do
  Kernel.exec "bundle exec foreman start"
end