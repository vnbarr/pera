require_relative "../lib/grid.rb"
require_relative "../lib/boat.rb"

describe Grid do

	it "should return 3x3 as widthxheight" do
		grid = Grid.new
		grid.get_width.should == 3
		grid.get_height.should == 3
	end
	
	it "should have no boats when creating new one" do
		grid = Grid.new
		grid.boat_count.should == 0
	end

	it "should return boat count = one, when we add one" do
		grid = Grid.new
		boat = Boat.new
		grid.add_boat boat
		grid.boat_count.should == 1
	end

	it "should return emtpy position on (1,1) when created" do
		grid = Grid.new
		grid.is_position_occupied(1,1).should == false
	end

	it "should show occupied position (2,2) when we add a boat on that position" do
		grid = Grid.new
		boat = Boat.new
		grid.add_boat_on_position(2,2,boat)
		grid.is_position_occupied(2,2).should == true
	end

	it "should hit a boat on position 2,2" do
		grid = Grid.new
		boat = Boat.new
		grid.add_boat_on_position(2,2,boat)
		was_a_hit = grid.bombard_position(2,2)
		was_a_hit.should == true
	end

	it "should show you win when the last boat is destroyed" do
		grid = Grid.new
		boat1 = Boat.new
		grid.add_boat_on_position(2,2,boat1)
		grid.bombard_position(2,2)
		grid.is_game_over.should == "you won"
	end

	it "should show you win when the last boat is destroyed" do
		grid = Grid.new
		boat1 = Boat.new
		boat2 = Boat.new
		grid.add_boat_on_position(2,2,boat1)
		grid.add_boat_on_position(0,1,boat2)
		grid.bombard_position(2,2)
		grid.is_game_over.should == false
		grid.bombard_position(0,1)
		grid.is_game_over.should == "you won"
	end

	it "should show 9 remaining bombs after one is used" do
		grid = Grid.new
		boat1 = Boat.new
		grid.add_boat_on_position(2,2,boat1)
		grid.bombard_position(2,0)
		grid.remaining_bombs.should == 9
	end

	it "should not show game over is it doesnt bombard the boat" do
		grid = Grid.new
		boat1 = Boat.new
		grid.add_boat_on_position(2,2,boat1)
		grid.bombard_position(2,0)
		grid.is_game_over.should == false
	end

	it "should show game over when all the bombs are used and a boat survives" do
		grid = Grid.new
		boat1 = Boat.new
		grid.add_boat_on_position(2,2,boat1)
		10.times { grid.bombard_position(2,0) }
		grid.is_game_over.should == "game over"
	end

	# it "should failed if dont hit a boat on position 2,2" do
	# 	grid = Grid.new
	# 	boat = Boat.new
	# 	grid.add_boat_on_position(2,2,boat)
	# 	was_a_hit = grid.bombard_position(2,2)
	# 	was_a_hit.should == false
   #  end
end
