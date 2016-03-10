class CLI
	def call
		g = Game.new
		g.start
		
		while !g.completed?
			nil
		end
		play_again?
		
	end
	
	def play_again?
		puts "Would you like to play again? y/n"
		input = gets.strip
		case input
		when 'y'
			call
		when 'n'
			exit
		else
			puts "\nPlease enter 'y' or 'n'"
			play_again?
		end
	end
end
