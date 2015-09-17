# The purpose of this class it decide on the move the bot will make
# This is a basic bot and simply makes a random choice
class BasicBot

	RSP = [:rock, :paper, :scissors]
	# This method returns the bots next move
	def next_move
		choice = rand(0..2)
		RSP[choice]
		# convert choice into one of the symbols :rock, :paper, :scissors
	end
end
