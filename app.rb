require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "secret page"
end

get '/s' do
  "s page"
end

get '/hidden' do
  "hidden page"
end