# The role of this file is to pull in all the required libraries and files
require 'minitest/autorun'
require 'mocha'
require 'minitest/unit'
require 'mocha/mini_test'

require 'minitest/reporters'

require_relative '../lib/rps_game'

# This is a configuration setting from minitest reporters
# It changes the console output to be more descriptive
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

