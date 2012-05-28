$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require "rubygems"
require "bundler/setup"

require 'coffee-script'
require 'sinatra/base'
require 'mustache/sinatra'
require 'sass'
require 'pg'

require 'hotel'
require 'app'
require 'views/layout'
