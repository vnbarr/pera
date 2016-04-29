require 'sinatra'
require_relative './lib/grid.rb'

@@grid = Grid.new

get '/' do
  erb :index
end

post '/shoot' do
  x = params[:x]
  y = params[:y]
  @@grid.bombard_position x.to_i, y.to_i
  erb :index
end