# Rock Paper Scissors
###### a test driven approach

## What is in the box?

```
.
├── Gemfile
├── Gemfile.lock
├── Guardfile
├── README.md
├── Rakefile
├── .travis.yml
├── lib
│   ├── main.rb
│   ├── rps_game
│   │   ├── basic_bot.rb
│   │   ├── game.rb
│   │   └── view.rb
│   └── rps_game.rb
└── test
    ├── test_helper.rb
    └── rps_game
        ├── test_basic_bot.rb
        ├── test_game.rb
        └── test_view.rb
```

#### Gemfile & Gemfile.lock
This is used by 'bundler' in order to manage the gems and the dependencies. 

See: http://bundler.io/

These are the main commands:
* bundle install
* bundle update
* bundle exec ...

This installs or updates the gems. This will also generate a Gemfile.lock. This contains the exact gem versions that were used on the last update. 

Note: You can have multiple versions of the same gem installed on one machine. 

When running a file use ```bundle exec program.rb``` instead of ```ruby program.rb```.

This will ensure that the correct versions of the gems are used at runtime - these are the gems versions specified in the Gemfile.lock file. If you don't use ```bundle exec``` the system could choose an incorrect version of a gem at runtime.

#### Guardfile
This is a configuration file used by the guard gem. Specifically this file is for guard-minitest, which as another gem that makes it easier to use guard with minitest.

See: https://github.com/guard/guard

See: https://github.com/guard/guard-minitest

The command to run guard is ```gaurd```. It is a good idea to use this with Bundler e.g. ```bundle exec guard```.

This will then start guard. Guard will follow the instructions in the Guardfile. In this case it will run the tests when ever a Ruby file is changed and saved. This could be a production file or a test file. It has been configured to try and run the relevant tests e.g. if you change View.rb then the  TestView.rb tests will be run.

To run all the tests, click in the terminal and press ```enter```.


#### Rakefile
This is used by a gem named..... rake

See: https://github.com/ruby/rake

Examples: http://docs.seattlerb.org/rake/doc/rakefile_rdoc.html

In a Rakefile, you can specify various tasks e.g.
```
task 'greet' do |t|
  puts "hello from rake"
end
```

If we had this example task, we could run it with ```rake greet``` or better yet use ```bundle exec rake greet```.

In this specific Rakefile there is a task that can run the tests. It is a special kind of task, a test task, and it has the ability to run all the tests. To try it out use ```bundle exec rake test```. That task has been setup as the default so you can also use ```bundle exec rake```.


#### .travis.yml
This is a configuration file used by Travis CI.

See: https://travis-ci.org/

Travis CI is a continuous integration server. When someone checks in code to GitHub, Travis will be notified. Travis will checkout the code and run the tests - by default it uses Rake. It will send out an alert notification with the results of the test. 

To use this you need to sign into https://travis-ci.org with your GitHub credentials, and configure a repo. 

#### and the rest?

See the comments within each file.

## What is in the Gemfile?

```ruby
  gem 'guard'
  gem 'guard-minitest'
  gem 'mocha'	
  gem 'minitest-reporters'
  gem 'rake'
```
#### mocha
This gem provides a way to mock classes and functions

See: https://github.com/freerange/mocha#usage

There are more details within the tests.

#### minitest-reporters

This gem improves the output the minitest produces when it runs. There are a few options to choose from, see the docs and use what you prefer. Look in test_helper.rb to see how it is currently configured.

See: https://github.com/kern/minitest-reporters


## The challenge

Get all the tests to pass so that we have a working Rock Paper Scissors game.

Recommended approach:
* Read main.rb to get an overview of how the pieces will fit together
* Get the tests working in this order:
  * test_game.rb
  * test_view.rb
  * test_basic_bot.rb

###### Ask for a review often. 
###### Please ask if you get stuck.

###### Good luck!!!



