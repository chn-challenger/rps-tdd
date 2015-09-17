# The game class is responsible for implementing the game rules
class Game

	RSP = [:rock, :paper, :scissors]
	# This method returns the result of the game
	# This is either :player_wins, :bot_wins, :draw
	def play(player_move, bot_move)
		if player_move == bot_move
			:draw
		elsif player_move == :rock && bot_move == :scissors || player_move == :paper && bot_move == :rock || player_move == :scissors && bot_move == :paper
			:player_wins
		else
			:bot_wins
		end
	end

end
