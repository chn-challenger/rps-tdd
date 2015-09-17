# The purpose of this class is to interact with the player
# It displays messages and fetches user input
class View

	def welcome_player
		puts 'Welcome to Rock Paper Scissors!'
	end

	def players_next_move
		choices = {'r'=>:rock, 'p'=>:paper, 's'=>:scissors}
		print 'Select [r,p,s]:'
		move_as_char = gets.downcase.chomp
		choices[move_as_char]
		# convert move_as_char into one of the symbols :rock, :paper, :scissors
	end

	def display_result(result)
		case result
			when :draw then puts "It is a draw..."
			when :player_wins then puts "You won!"
			when :bot_wins then puts "You loose :("
		end
	end
end
