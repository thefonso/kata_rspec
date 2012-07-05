require 'spec_helper.rb'

describe "sayhello.rb" do
  
  before :each do #this will create my object -before- -each- test is ran
    @hi = Hello.new
  end
  
    it "contains an object called Hello" do
      @hi.should be_an_instance_of  Hello
    end
    
    describe "hello.speak" do 
      it "should return Hello from RSpec" do
        
        $stdout.should_receive(:puts).with("Hello from RSpec")
        
        @hi.speak
      end
    end

end