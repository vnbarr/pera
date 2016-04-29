require_relative "../lib/grid.rb"
require_relative "../lib/boat.rb"

describe Grid do

	it "should return 10x10 as widthxheight" do
		grid = Grid.new
		grid.get_width.should == 10
		grid.get_height.should == 10
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

end
