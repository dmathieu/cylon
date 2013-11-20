ENV['RACK_ENV'] = "test"

require 'rspec'
require 'rack/test'

require 'cylon'

class Cylon::TestingRackApp

  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["Hello world!"]]
  end
end
