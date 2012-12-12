require_relative '../classes/observable.rb'
class Player < Observable

  attr_accessor :location

  def init subscribers
    @subscribers = subscribers    
  end

  def change_location id
    @location = id 
  end
  
end

describe Player do 
  before :each do 
    @player = Player.new
    Location = Struct.new(:id)
    @location = Location.new
    @location.id = 1
 end
 
  it 'has location' do
    @player.location = @location.id
    @player.location.should eq 1
  end

  it 'can change location'do
    @player.change_location  @location
    @player.location.should eq @location
  end
end

