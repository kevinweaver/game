class Player < Observable

  attr_accessor :location

  def init subscribers
    @subscribers = subscribers    
  end

  def change_location id
    @location = id 
  end

  
end

