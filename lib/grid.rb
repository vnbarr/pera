require_relative "./boat.rb"
require 'matrix.rb'

class Grid
	
	def initialize
		@width = 10
		@height = 10
		@boats_list = []
		@boats_matrix = Array.new(3) { Array.new(3){0} }
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
	end

	def bombard_position(row,column)
		return is_position_occupied(row,column)
	end
end
