require 'spec_helper'

describe "Cylon Rack Middleware" do
  include Rack::Test::Methods
  let(:app) { Cylon::Rack.new(Cylon::TestingRackApp.new) }
  
  before :each do
    ENV['RACK_ENV'] = "test"
  end
  
  it "should not be indexable" do
    get '/robots.txt'
    last_response.should be_ok
    last_response.body.should eql("User-Agent: *\nDisallow: /")
  end
  
  it "should not change the content if we are not in /robots.txt" do
    get '/'
    last_response.body.should_not eql("User-Agent: *\nDisallow: /")
  end
  
  it "should also not match in subdirectories" do
    get '/testing/robots.txt'
    last_response.body.should_not eql("User-Agent: *\nDisallow: /")
  end
  
  it "should be indexable if we are in production" do
    ENV['RACK_ENV'] = "production"
    get '/robots.txt'
    last_response.should be_ok
    last_response.body.should_not eql("User-Agent: *\nDisallow: /")
  end
end