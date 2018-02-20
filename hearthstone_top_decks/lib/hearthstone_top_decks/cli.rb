# Our CLI Controller

class HearthstoneTopDecks::CLI

	def call
		list_decks
		choose_deck
	end

	def list_decks
		#here we're stub out what we want our output to look like.
		puts "Heh, greetings."
		puts <<-DOC
		Top Hearthstone Decks
		1. Deck 1
		2. Deck 2
		...
		x. Deck x
		DOC
	end

	def choose_deck
		puts "Which deck would you like to look at?"
		#this will need to be scraped data to examine and use, but, for now,
		#we'll stub it. stub it. stub it.
		input = nil
		input = gets.strip.downcase
		while input != "exit"
			case input
				#for instance, "deck 1" will be the name of the deck scraped from hearthstonetopdecks.com
			when "deck 1"
				#this information "info on deck 1" will be from the opened url source
				#of deck_1's href link. So, we'll open and scrape another page.
				#This will happen for each deck.
				puts "info on deck 1"
			when "deck 2"
				puts "info on deck 2"
			end 
		end
	end


end