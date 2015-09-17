require_relative '../test_helper'

# These tests test the View class
class TestView < Minitest::Test

  # This method runs once before each test
  # It sets an instance member variable that can be used in the tests
	def setup
		@view = View.new
	end

  	def test_welcome_message
      # This next line of code mocks or fakes the puts method
      # If @view does not use 'puts' with the provided string, then this test will fail
  		@view.expects(:puts).with('Welcome to Rock Paper Scissors!')
  		@view.welcome_player
  	end

  	def test_get_player_move_of_rock
      skip
      # If @view does not use puts with the provided string, then this test will fail
  		@view.expects(:print).with('Select [r,p,s]:')
      # If @view does not use gets by the end of this test then this test will fail 
      # When it does use gets, then 'r' with a newline will be returned - make sure you *chomp* it
  		@view.expects(:gets).returns("r\n")
  		players_move = @view.players_next_move
  		assert_equal(:rock, players_move)
  	end

    def test_get_player_move_of_paper
      skip
      @view.expects(:print).with('Select [r,p,s]:')
      @view.expects(:gets).returns("p\n")
      players_move = @view.players_next_move
      assert_equal(:paper, players_move)
    end

    def test_get_player_move_of_scissors
      skip
      @view.expects(:print).with('Select [r,p,s]:')
      @view.expects(:gets).returns("s\n")
      players_move = @view.players_next_move
      assert_equal(:scissors, players_move)
    end

    def test_display_the_game_result_when_a_player_wins
      skip
      @view.expects(:puts).with('You won!')
      @view.display_result(:player_wins)
    end

    def test_display_the_game_result_when_the_bot_wins
      skip
      @view.expects(:puts).with('You loose :(')
      @view.display_result(:bot_wins)
    end

    def test_display_the_game_result_when_there_is_a_draw
      skip
      @view.expects(:puts).with('It is a draw...')
      @view.display_result(:draw)
    end

end