A simple RSpec example
(branch  non-conventional)


At prompt:

$mkdir kata_rspec

$cd kata_rspec

Install RSpec

    $gem install rspec
    
Then from inside the directory kata_rspec
    
    $rspec --init

Your directory tree should resemble this

    kata_rspec
        spec
            spec_helper


Now take a look at each of the four files in this repository. And you should be able to easily recreate this test on your own.

-thefonso




Note:
About conventions. What you see here slightly differs from convention in that normally when you test a class it lives in lib/sayhello.rb and tests live in spec/sayhello.rb

But you ask WHY IS THIS convention? Because, rarely do you write an app that only has one class file! As your project grows, it becomes a ton of files. Placing your files in a lib folder is a way to 'begin' organizing your files.

In this case directory structure looks like so...

    kata_rspec
        lib
            sayhello.rb
        spec
            spec_helper
            sayhello_spec.rb
        
    Note: 
    Your spec_helper.rb file goes from this...

    require_relative '../sayhello.rb' #points to file so RSpec can 'see' it

    To this...

    require_relative '../lib/sayhello.rb' #points to file so RSpec can 'see' it
    
TO SEE THIS EXAMPLE:
switch to the 'conventional' branch


As you go along in developing your code, things will get even more interesting. You will have a ton of test living inside the spec directory. So an ideal way to handle this is by creating folders inside your spec folder like so...

kata_rspec
    lib
        sayhello.rb
    spec
        spec_helper
        controller_test
            controller-i-am-testing_spec.rb
        views_test
            view-i-am-testing_spec.rb


Get the idea?

As long as you run...
    $rspec spec

At the command prompt, rspec will test all the test in that directory recursively.


 

Useful tidbits:

Run rspec from command line like so...
$rspec spec --format nested

Or 

Place this inside your .rspec file.
