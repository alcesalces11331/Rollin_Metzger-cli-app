class HearthstoneTopDecks::Sections

	attr_accessor :section

	def self.standard_meta_decks
		puts <<~Doc

			Top Standard Meta Decks
			What section would you like to look at?

			'1' for Best Decks
			'2' for Great Decks
			'3' for Fringe Decks
			Or, enter 'exit' to exit.
			Or, enter 'sections' to see the sections.

		Doc
		input = nil
		while input != 'exit'
			input = gets.strip.downcase.to_s
			if input == "1"
				puts "Best Decks:"
				@best_decks = HearthstoneTopDecks::Scraper.best_standard_meta_decks
				@best_decks.each do |deck|
					puts deck
				end
				
			elsif input == "2"
				puts "Great Decks:"
				@great_decks = HearthstoneTopDecks::Scraper.great_standard_meta_decks
				@great_decks.each do |deck|
					puts deck
				end
				
			elsif input == "3"
				puts "Fringe Decks:"
				@fringe_decks = HearthstoneTopDecks::Scraper.fringe_standard_meta_decks
				@fringe_decks.each do |deck|
					puts deck
				end

			#elsif input == "sections"
				#HearthstoneTopDecks::CLI.call

			elsif input == 'back'
				self.standard_meta_decks
			else 
				puts "Invalid input"
			end
		end
	end

	def self.top_community_decks
		puts "Top Community Decks:"
		@top_community_decks = HearthstoneTopDecks::Scraper.top_community_decks
		@top_community_decks.each do |deck|
			puts deck
		end
	end

	def self.recent_updated_deck_guides
		puts "Recent/Updated Deck Guides:"
		@recent_guides = HearthstoneTopDecks::Scraper.recent_updated_deck_guides
		@recent_guides.each do |deck|
			puts deck 
		end
	end

	def self.new_community_decks
		puts "New Community Decks:"
		@new_community = HearthstoneTopDecks::Scraper.new_community_decks
		@new_community.each do |deck|
			puts deck
		end
	end

	def self.featured_decks
		puts "Featured Decks:"
		@featured = HearthstoneTopDecks::Scraper.featured_decks
		@featured.each do |deck|
			puts deck
		end
	end
end

#like I want to use more files and isolate functionality, but I don't think
#I really have too... >.> <.< T.T