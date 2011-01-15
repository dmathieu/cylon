require "rubygems"
require "bundler/setup"

module Cylon
  autoload :Rack, 'cylon/rack'
  
end

if defined?(Rails::Engine)
  require 'cylon/rails'
end