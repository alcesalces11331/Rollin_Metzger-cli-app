# Our CLI Controller

class HearthstoneTopDecks::CLI

	def call
		list_decks
		choose_deck
	end

	def list_decks
		#here we're going to stub out what we want our output to look like.
		puts <<-DOC
		Heh, greetings.
		Here are the top decks from Hearthstone Top Decks
		DOC
		@decks = HearthstoneTopDecks::Decks.decks
		@decks.each_with_index do |deck, i|
			puts "#{i+1}. #{deck.klass} - #{deck.archetype} - #{deck.sub_archetype}"
		end
	end

	def choose_deck
		puts "Which deck would you like to look at?"
		#this will need to be scraped data to examine and use, but, for now,
		#we'll stub it. stub it. stub it.
		input = nil
		while input != "exit"
			input = gets.strip.downcase
			case input
				#for instance, "deck 1" will be the name of the deck scraped from hearthstonetopdecks.com
			when "1"
				#this information "info on deck 1" will be from the opened url source
				#of deck_1's href link. So, we'll open and scrape another page.
				#This will happen for each deck.
				puts "info on deck 1"
			when "2"
				puts "info on deck 2"
			end 
		end
	end


end