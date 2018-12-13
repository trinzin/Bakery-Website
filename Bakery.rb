require 'sinatra'
require 'sinatra/reloader'

register Sinatra::Reloader

get '/about' do 
  erb :about
end

get '/' do
  erb :homepage
end

get '/contact' do
  erb :contact
end

get '/news' do
  erb :news
end

get '/home' do
  erb :home
end