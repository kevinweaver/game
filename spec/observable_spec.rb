require_relative '../classes/observable.rb'
describe Observable do
  before(:each) do 
    @subscriber = double "subscriber"
    @subscriber.stub(:handle_event => "shit gets handled")
    @observable = Observable.new

  end

  it "adds subscribers" do
    @observable.add_subscriber @subscriber 
    @observable.subscribers.should include @subscriber
  end

  it "doesn't have subscriber" do
    @observable.add_subscriber @subscriber2
    @observable.subscribers.should_not include @subscriber
  end

  it "sends events to it's subscribers" do
    @observable.add_subscriber @subscriber
    @subscriber.should_receive(:handle_event).with("an_event")
    @observable.fire_event("an_event")
  end

end
