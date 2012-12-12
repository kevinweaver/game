class Location

  attr_accessor :id, :description, :neighbors

  def initialize neighbors, description
     @description = description
     @neighbors = neighbors

  end

  
end






describe Location do

  before :each do
    @north = Location.new [],  'This is a house'
    @south = Location.new [], 'This is the woods'
    @east = Location.new [], 'This is the basement'
    @our_locatoin = Location.new [:south => @south, :east => @east], "this is us"
  end

  it "has neigbour south" do
    @our_locatoin.neigbours(:south).description.should eq 'This is the woods'
  end

  it "adds adjacent rooms" do
    @our_location.add_adjacent_location [:north => @north]
    @our_location.neighbors(:north).should eq @north
  end


end
