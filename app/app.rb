require 'sinatra'
require './lib/game'
require './lib/board'

# Main app controller
class GameOfLife < Sinatra::Base
  before do
    @game = session[:game]
  end

  use Rack::MethodOverride
  use Rack::Session::Pool

  get '/' do
    erb(:index)
  end

  post '/game/new' do
    session[:game] = Game.new(params[:size].to_i)
    redirect '/setup'
  end

  get '/setup' do
    erb(:setup)
  end

  get '/play' do
    @game.tick
    erb(:play)
  end

  post '/setup/choices' do
    @game.choose_starting_square(params[:row].to_i, params[:column].to_i)
    redirect '/setup'
  end
end
