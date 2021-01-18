require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "secret page"
end
