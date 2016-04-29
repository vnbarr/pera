require 'sinatra'
require_relative './lib/grid.rb'

@@grid = Grid.new

get '/' do
  erb :index
end
