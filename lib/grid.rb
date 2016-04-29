require_relative "./boat.rb"
require 'matrix.rb'

class Grid
	
	def initialize
		@width = 3
		@height = 3
		@boats_list = []
		@boats_matrix = Array.new(3) { Array.new(3){0} }
		@floating_boats = []
	end
	
	def get_width
		return @width
	end

	def get_height
		return @height
	end
	
	def add_boat boat
		@boats_list.push(boat)
	end

	def boat_count
		@boats_list.length
	end

	def is_position_occupied(row,column)
		if (@boats_matrix[row][column] == 0)
			return false
		end
		return true
	end

	def add_boat_on_position(row,column,boat)
		@boats_matrix[row][column] = boat
		@floating_boats.push(boat)
	end

	def bombard_position(row,column)
		if is_position_occupied(row,column)
			@floating_boats.pop
			return true
		end
		return false
	end

	def is_game_over
		if @floating_boats.length == 0
			return true
		end
		return false	
	end
end
