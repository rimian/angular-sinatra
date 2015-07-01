require 'sinatra/base'

app = Sinatra.new do
  get '/' do
    send_file 'app/index.html'
  end

  get '/api' do
    'Hello world'
  end
end

app.run!
