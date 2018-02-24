class HearthstoneTopDecks::Decks

	attr_accessor 

	def self.choose_deck
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase
			if input.to_i > 0
				puts @decks[input.to_i-1]
			elsif input == "decks"
				list_decks
			else 
				puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				Or, enter 'decks' to see the decks again.
				DOC
			end 
		end
	end



end