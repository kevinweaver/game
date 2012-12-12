class Observable 
 attr_reader :subscribers

 def initialize
   @subscribers = []
 end

 def add_subscriber subscriber
   @subscribers << subscriber 
 end

 def subscribers
   @subscribers 
 end

 def fire_event event
    @subscribers.each do |s|
      s.handle_event event 
    end
 end


end
