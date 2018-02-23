# Our CLI Controller

class HearthstoneTopDecks::CLI

	def call
		list_section
		choose_section
	end

	def list_section
		#here we're going to stub out what we want our output to look like.
		puts <<~DOC
		Heh, greetings.
		Here are the sections of to choose from:
		DOC
		@sections = HearthstoneTopDecks::Sections.section
		@sections.each do |section|
			puts section 
		end
	end

	def choose_section
		puts <<~DOC
				Which section would you like to look at?
				'1' for Top Standard Meta Decks
				'2' for Featured Decks
				'3' for Top Community Decks
				'4' for New community Decks
				'5' Recent/Updated Deck Guides
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase
			if input == 1
				puts <<~Doc
					What section would you like to look at?
					'1' for Best Decks
					'2' for Great Decks
					'3' for Fringe Decks
					Or, enter 'exit' to exit.
					Or, enter 'sections' to see the sections.
				Doc
				input = gets.strip.downcase

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