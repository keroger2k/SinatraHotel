require 'test/unit'

begin
  require 'rubygems'
  require 'redgreen'
  require 'leftright'
rescue LoadError
end

require 'rack/test'
require 'mocha'
require 'spec/mini'

ENV['RACK_ENV'] = 'test'
ENV['CI'] = '1' if !RUBY_PLATFORM.downcase.include?("darwin")

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))

require 'boot'
include Hotel
include Rack::Test::Methods

def app
  Hotel::App
end
