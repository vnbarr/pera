require_relative "./boat.rb"

class Grid
	
	def initialize
		@width = 10
		@height = 10
		@boats_list = []
	end
	
	def get_width
		return @width
	end

	def get_height
		return @height
	end
	
	def add_boat boat
		@boats_list << boat
	end

	def boat_count
		@boats_list.length
	end

	def draw
		matrix_draw = ""
		for i in 1..@width
			for j in 1..@height
				matrix_draw+=" _"
			end
			matrix_draw+= "<p>"

		end
		matrix_draw
	end
end
