module Cylon
  class Rack

    def initialize(app)
      @app = app
    end

    def call(env)
      if env["PATH_INFO"] == "/robots.txt" && ENV['RACK_ENV'] != "production"
        [200, {"Content-Type" => "text/plain"}, ["User-Agent: *\nDisallow: /"]]
      else
        @app.call(env)
      end
    end
  end
end
