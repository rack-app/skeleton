class App < Rack::App

  require 'app/healthcheck'

  mount App::Healthcheck

end