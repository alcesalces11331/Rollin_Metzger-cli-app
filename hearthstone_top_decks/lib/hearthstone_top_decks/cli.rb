class HearthstoneTopDecks::CLI

	def call
		HearthstoneTopDecks::Scraper.scraper
		list_section
		choose_section
	end

	def list_section
	
		puts <<~DOC
		Heh, greetings, Hearthstone Fanatic!
		
		Here are the sections of to choose from:
		
		DOC

		@sections = HearthstoneTopDecks::Scraper.sections
		@sections.each do |section|
			puts section 
		end
	end

	def user_selection
		puts <<~DOC

				Which section would you like to look at?

				'1' for Top Standard Meta Decks
				'2' for Top Community Decks
				'3' for Recent/Updated Deck Guides
				'4' for New community Decks
				'5' Featured Decks
				Or, enter 'exit' to exit.
				DOC
	end

	def choose_section
		user_selection

		input = nil
		while input != "exit"
			input = gets.strip.to_s
			if input == "1"
				HearthstoneTopDecks::Sections.standard_meta_decks
			elsif input == "2"
				HearthstoneTopDecks::Sections.top_community_decks
			elsif input == "3"
				HearthstoneTopDecks::Sections.recent_updated_deck_guides
			elsif input == "4"
				HearthstoneTopDecks::Sections.new_community_decks
			elsif input == "5"
				HearthstoneTopDecks::Sections.featured_decks
			end
		end
	end

	
=begin
	def choose_deck
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		#this will need to be scraped data to examine and use, but, for now,
		#we'll stub it. stub it. stub it.
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

=end
end