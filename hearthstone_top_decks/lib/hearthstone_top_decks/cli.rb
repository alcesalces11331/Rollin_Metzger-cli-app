class HearthstoneTopDecks::CLI

	def call
		puts <<~DOC

			Well met, Champion! Let's look at some decks!

			Loading Decks...
			DOC
		HearthstoneTopDecks::Scraper.new.make_decks
		start
	end

	def start
		puts ""
		puts "Here are the Standard Meta Decks currently on Ladder:"
		sleep 3
	
		print_decks

		puts ""
		puts "What deck would you like more information on?"
		
		input = gets.strip.to_i
		list_length = HearthstoneTopDecks::Decks.all.length
		until input <= list_length 
			puts "Please enter a number less than #{list_length + 1}"
			input = gets.strip.to_i
		end

		deck = HearthstoneTopDecks::Decks.find(input.to_i)

		print_deck(deck)

		puts ""
		puts "Would you like to view another deck? Enter Y or N"

		input = gets.strip.downcase
		if input == "y"
			start
		else
			puts ""
			puts "Well played, Hero. Thanks for visiting."
			exit
		end
	end

	def print_decks
		puts ""
		puts "~~~~~~~~~ Standard Meta Decks ~~~~~~~~~"
		puts ""
		HearthstoneTopDecks::Decks.all.each.with_index do |deck, index|		
			puts "#{index + 1}. #{deck.name}"
		end
	end

	def print_deck(deck)
		puts ""
		puts "~~~~~~~~~~#{deck.name} ~~~~~~"
		puts ""
		puts "Class: #{deck.klass}"
		puts "Format: #{deck.phormat}"
		puts "Type: #{deck.type}"
		puts "Style: #{deck.style}"
		puts "Meta Deck: #{deck.meta_deck}"
		puts "#{deck.cost}"
		puts ""
		puts "~~~~~~~~~~ Deck List ~~~~~~~~~~"
		puts ""
		deck.card_list.each do |key, value| 
			puts "#{key} - #{value}"
		end
	end
end