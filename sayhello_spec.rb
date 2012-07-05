require_relative 'sayhello.rb' #points to file so I can 'see' it

describe "sayhello.rb (title)" do
  it "should say 'Hello from Rspec' when ran (bullet point)" do
    hi = Hello.new #brings my object into existence
    hi.speak == "Hello from RSpec"
  end
end