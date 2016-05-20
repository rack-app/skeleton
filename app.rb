class App < Rack::App

  require_relative 'app/healthcheck'

  mount App::Healthcheck

end