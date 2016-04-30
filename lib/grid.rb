require_relative "./boat.rb"
require 'matrix.rb'
#lala

class Grid
  def initialize
		@width = 3
		@height = 3
		@boats_list = []
		@boats_matrix = Array.new(3) { Array.new(3){0} }
		@floating_boats = []
		@bombs = 10
	end

	def remaining_bombs
		@bombs
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

  def draw
    matrix_draw = ""
    for i in 1..@width
      matrix_draw += "<p>"
      for j in 1..@height
        matrix_draw += get_grid_representation(i-1, j-1)
      end
      matrix_draw += "</p>"
    end
    return matrix_draw
  end

  def get_grid_representation(i, j)
    grid_position = @boats_matrix[j][i]
    if grid_position == 2
      return " A"
    end
    if grid_position == 0 || grid_position.is_floating
      return " _"
    else
      return " H"
    end
  end

  def is_position_occupied(row, column)
    if (@boats_matrix[row][column] == 0 || @boats_matrix[row][column] == 2)
      return false
    end
    return true
  end

	def is_game_over
		if @floating_boats.length == 0
			return true
		end
		if @bombs == 0
			return true
		end
		return false
	end

  def add_boat_on_position(row, column, boat)
    @boats_matrix[row][column] = boat
    @floating_boats.push(boat)
  end

  def bombard_position(row, column)
	@bombs = @bombs - 1
    if is_position_occupied(row, column)
      @boats_matrix[row][column].receive_bomb
      @floating_boats.pop
      return true
    else
      @boats_matrix[row][column] = 2;
      return false
    end
  end

end
