class Cylon::Rails < Rails::Engine

  config.app_middleware.insert 0, Cylon::Rack
end
