require 'sinatra'
require_relative './lib/grid.rb'
require_relative './lib/boat.rb'

@@grid = Grid.new
boat = Boat.new

@@grid.add_boat_on_position(1,1, boat)

get '/' do
  erb :index
end

post '/shoot' do
  x = params[:x]
  y = params[:y]
  @@grid.bombard_position x.to_i, y.to_i
  erb :index
end