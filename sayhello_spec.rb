require_relative 'sayhello.rb' #just here to help


describe "sayhello.rb (title)" do
  it "should say 'Hello from Rspec' when ran (bullet point)" do
    hi = Hello.new
    hi.speak.should == "Hello from RSpec"
  end
end