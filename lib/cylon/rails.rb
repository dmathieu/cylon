class Cylon::Rails < Rails::Engine
  
  config.app_middleware.use Cylon::Rack
end