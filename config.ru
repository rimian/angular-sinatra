require 'sinatra/base'

app = Sinatra.new do
  set :public_folder, './'

  get '/' do
    send_file 'index.html'
  end

  get '/api' do
    'Hello world'
  end
end

app.run!
