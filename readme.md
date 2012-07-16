A simple RSpec example

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

Useful tidbits:
Run rspec from command line like so...
$rspec spec --format nested

Or 

Place this inside your .rspec file.
