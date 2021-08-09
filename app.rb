require 'sinatra'
require "sinatra/reloader" if development?

# set :root, File.dirname(__FILE__)
# set :views, "#{settings.root}/../views"

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

get '/named-cat' do
  p params
  @name = params[:name]
  @colour = params[:colour]

  erb :cat
end