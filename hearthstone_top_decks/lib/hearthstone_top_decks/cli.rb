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
		
		print_sections(input)

		puts ""
		puts "What section would you like more information on?"
		input = gets.strip

		section = HearthstoneTopDecks::Sections.find(input.to_i)

		print_section_decks(section)

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
			puts "Well played. "
			exit
		end
	end

	def print_sections(input)
		puts ""
		puts "~~~~~~~~~ Sections ~~~~~~~~~"
		puts ""
		HearthstoneTopDecks::Sections.all.each.with_index(input) do |section, index|
			puts "#{index}. #{section.name}"
		end
	end

	def print_section_decks(section)
		puts ""
		puts "~~~~~~~~~ #{section.name} Decks: ~~~~~~~~~"
		puts ""
		HearthstoneTopDecks::Decks.all.each.with_index(input) do |deck, index|
			if 	deck.section == section
				puts "#{index}. #{deck}"
			end
		end
	end

	def print_deck(deck)
		puts ""
		puts "~~~~~~~~~ #{deck.name} ~~~~~~~~~"
		puts ""
		puts "Class: 		#{deck.klass}"
		puts "Type: 		#{deck.type}"
		puts "Style: 		#{deck.style}"
		puts "Cost: 		#{deck.cost}"
		puts ""
		puts "~~~~~~~~~ Card List ~~~~~~~~~"
		puts ""
		puts "#{deck.list}"
		puts ""
	end
end