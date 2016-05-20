require 'bundler'

case ENV['RACK_ENV']
  when 'test'
    Bundler.require(:default, :test)
  when 'production'
    Bundler.require(:default, :production)
  else
    Bundler.require(:default, :development)
end

require_relative 'app'