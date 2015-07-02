require 'capybara/rspec'
require 'capybara/poltergeist'
require './lib/app'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  config.order = :random
  Capybara.default_driver = :poltergeist
end
