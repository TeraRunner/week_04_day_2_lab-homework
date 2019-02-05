require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/game'
also_reload './models/*'

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @comparisson = game.comparator()
  erb (:result)
end

get '/' do
  erb (:home)
end

get '/game' do
  erb (:game)
end
