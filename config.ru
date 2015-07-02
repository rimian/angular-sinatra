require './lib/app'

app = Sinatra.new do
  get '/api' do
    ''
  end
end

run App.new(app)
