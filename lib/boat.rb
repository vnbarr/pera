class Boat
	def initialize
		@width = 1
		@height = 1
		@floating = true
	end
	
	def get_width
		return @width
	end

	def get_height
		return @height
	end

	def is_floating
		return @floating
	end
	
	def receive_bomb
		@floating=false
	end

end
