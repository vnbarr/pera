require_relative '../lib/barco.rb'

describe Barco do
	it "should return size heigth 1 width 1 when default" do
		barco = Barco.new()
		barco.get_width.should == 1
		barco.get_height.should == 1
	end
end
