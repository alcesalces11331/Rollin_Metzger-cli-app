# Our CLI Controller

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

	def choose_section
		puts <<~DOC

				Which section would you like to look at?

				'1' for Top Standard Meta Decks
				'2' for Top Community Decks
				'3' for Recent/Updated Deck Guides
				'4' for New community Decks
				'5' Featured Decks
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.to_s
			if input == "1"
				puts <<~Doc

					What section would you like to look at?
					
					'1' for Best Decks
					'2' for Great Decks
					'3' for Fringe Decks
					Or, enter 'exit' to exit.
					Or, enter 'sections' to see the sections.
				Doc
				input = gets.strip.downcase
				if input == "1"
					puts "Best Decks:"
					@best_decks = HearthstoneTopDecks::Scraper.best_standard_meta_decks
					@best_decks.each do |deck|
						puts deck
					end
				end

			end
		end
	end

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


end