class HearthstoneTopDecks::CLI

	def call
		HearthstoneTopDecks::Scraper.new.make_decks
		puts <<~DOC
			Well met! Welcome to a CLI for Hearthstone Top Decks
			DOC
		start
	end

	def start
		puts ""
		input = gets.strip.to_i

		print_decks

		puts ""
		puts "What deck would you like more information on?"
		input = gets.strip

		deck = HearthstoneTopDecks::Decks.find(input.to_i)

		print_deck(deck)

		puts ""
		puts "Would you like to view another deck? Enter Y or N"

		input = gets.strip.downcase
		if input == "y"
			start
		else
			puts ""
			puts "Well played. Thanks for visiting."
			exit
		end
	end

	def print_decks
		puts ""
		puts "~~~~~~~~~ Standard Meta Decks ~~~~~~~~~"
		puts ""
		HearthstoneTopDecks::Decks.all.each.with_index do |deck, index|		
			puts "#{index}. #{deck}"
		end
	end

	def print_deck(deck)
		puts ""
		puts "~~~~~~~~~ #{deck.name} ~~~~~~~~"
		puts ""
		puts "Class: 			#{deck.klass}"
		puts "Format: 			#{deck.phormat}"
		puts "Type: 			#{deck.type}"
		puts "Season: 			#{deck.season}"
		puts "Style: 			#{deck.style}"
		puts "Meta Deck: 		#{deck.meta_deck}"
		puts "Cost: 			#{deck.cost}"
		puts ""
		puts "~~~~~~~~~~ Card List ~~~~~~~~~~"
		puts ""
		puts "#{deck.list}"
		puts ""
	end
end