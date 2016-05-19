class App::Healthcheck < Rack::App

  get '/healthcheck' do
    'OK'
  end

end