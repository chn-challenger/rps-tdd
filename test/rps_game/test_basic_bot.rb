require_relative '../test_helper'

# These tests test the BasicBot class
class TestBasicBot < Minitest::Test

	# This method runs once before each test
	# It sets an instance member variable that can be used in the tests
	def setup
		@bot = BasicBot.new
	end

 	def test_should_return_rock
 		#skip
 		# The next line of code mocks or fakes the rand method
 		# This means when @bot calls rand with a range of 0..2
 		# then rand will return 0

 		# In addition to this, if @bot does not call rand with a range of 0..2
 		# then the test will not pass
 		@bot.expects(:rand).with(0..2).returns(0)
	  	move = @bot.next_move
	  	assert_equal(:rock, move)
 	end

 	def test_should_return_paper
 		#skip
 		@bot.expects(:rand).with(0..2).returns(1)
	  	move = @bot.next_move
	  	assert_equal(:paper, move)
 	end

	def test_should_return_scissors
		#skip
  		@bot.expects(:rand).with(0..2).returns(2)
		move = @bot.next_move
		assert_equal(:scissors, move)
  	end

end
