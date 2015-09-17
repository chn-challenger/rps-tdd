require_relative '../test_helper'

# These tests test the Game class
class TestGame < Minitest::Test

	# This method runs once before each test
	# It sets an instance member variable that can be used in the tests
	def setup
		@game = Game.new()
	end

	def test_player_chooses_rock_bot_chooses_rock_results_in_draw
		result = @game.play(:rock, :rock)
		assert_equal(:draw, result)
  	end

  	def test_player_chooses_scissors_bot_chooses_scissors_results_in_draw
  		skip
		result = @game.play(:scissors,:scissors)
		assert_equal(:draw, result)
  	end

  	def test_player_chooses_paper_bot_chooses_paper_results_in_draw
  		skip
		result = @game.play(:paper, :paper)
		assert_equal(:draw, result)
  	end

  	def test_player_chooses_paper_bot_chooses_rock_results_in_player_wins
  		skip
		result = @game.play(:paper, :rock)
		assert_equal(:player_wins, result)
  	end

  	def test_player_chooses_rock_bot_chooses_scissors_results_in_player_wins
  		skip
		result = @game.play(:rock,:scissors)
		assert_equal(:player_wins, result)
  	end

  	def test_player_chooses_scissors_bot_chooses_paper_results_in_player_wins
  		skip
		result = @game.play(:scissors, :paper)
		assert_equal(:player_wins, result)
  	end

  	def test_player_chooses_scissors_bot_chooses_rock_results_in_bot_wins
  		skip
		result = @game.play(:scissors, :rock)
		assert_equal(:bot_wins, result)
  	end

  	def test_player_chooses_rock_bot_chooses_paper_results_in_bot_wins
  		skip
		result = @game.play(:rock, :paper)
		assert_equal(:bot_wins, result)
  	end

  	def test_player_chooses_paper_bot_chooses_scissors_results_in_bot_wins
  		skip
		result = @game.play(:paper, :scissors)
		assert_equal(:bot_wins, result)
  	end
end