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
  "<div style='border: 3px dashed red'>
  <img src='https://product-image.juniqe-production.juniqe.com/media/catalog/product/seo-cache/x800/18/22/18-22-301P__CENTER/Sneaky-Cat-Laura-Graves-Canvas-Print.jpg'}
  </div>"
end
