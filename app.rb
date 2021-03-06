require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  erb :index
end

get '/secret' do
  "I ate an entire tub of houmous in bed last night?"
end

get '/lie' do
  "<strong>I can run 100m in 6.3 seconds</strong>"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  @colour = ["Black", "Tabby", "Calico", "Green"].sample

  erb :cat
end

post '/named-cat' do
  p params
  @name = params[:name]
  @colour = params[:colour]

  erb :cat
end

get '/cat-form' do
  erb :catform
end