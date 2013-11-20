require "rubygems"
require "bundler/setup"

module Cylon
  autoload :Rack, 'cylon/rack'

end

begin
  require 'cylon/rails'
rescue NameError
  # Rails::Engine is not defined. This is not a rails engine.
end
