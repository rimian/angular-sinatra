require 'capybara/rspec'
require 'capybara/poltergeist'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  config.order = :random
  Capybara.default_driver = :poltergeist

  require 'sinatra/base'

  app = Sinatra.new do
    get '/' do
      send_file 'index.html'
    end

    get '/api' do
      'Hello world'
    end
  end

  Capybara.app = app
end
