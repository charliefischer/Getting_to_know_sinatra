require 'sinatra'
set :session_secret, 'super secret'

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

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
