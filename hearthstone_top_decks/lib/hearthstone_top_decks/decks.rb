class HearthstoneTopDecks::Decks

	attr_accessor :Klass, :format, :type, :style, :meta_deck, :dust_cost

	def self.choose_deck
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		HearthstoneTopDecks::Scraper.
		while input != "exit"
			input = gets.strip.downcase.to_i
			if input == "1"
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

	def self.featured_decks
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		HearthstoneTopDecks::Scraper.scraper_featured_decks
		while input != "exit"
			input = gets.strip.downcase.to_i
			if input == "1"
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