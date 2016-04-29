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
  #
	# it "should " do
	# 	grid = Grid.new
	# 	boat = Boat.new
	# 	grid.add_boat_on_position(2,2,boat)
	# 	was_a_hit = grid.bombard_position(2,2)
	# 	was_a_hit.should == true
	# end
end
