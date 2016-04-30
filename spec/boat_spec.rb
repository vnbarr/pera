require_relative '../lib/boat.rb'

describe Boat do
	it "should return size heigth 1 width 1 when default" do
		boat = Boat.new()
		boat.get_width.should == 1
		boat.get_height.should == 1
	end
	it "should return status floating true as default" do
		boat = Boat.new()
		boat.is_floating.should == true
	end

	it "should return status floating false when destroyed" do
		boat = Boat.new()
		boat.receive_bomb
		boat.is_floating.should == false
	end

end
