require 'spec_helper.rb'

describe "sayhello.rb" do
  
  before :each do #this will create my object -before- -each- test is ran
    @hi = Hello.new
  end
    
  it "should return Hello from RSpec" do
    
    $stdout.should_receive(:puts).with("Hello from RSpec")
    
    @hi.speak
  end
end