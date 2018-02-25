class HearthstoneTopDecks::Sections

	attr_accessor :section

	def self.user_selection
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

	def self.smd_doc
		puts <<~Doc

			Top Standard Meta Decks
			What section would you like to look at?

			'1' for Best Decks
			'2' for Great Decks
			'3' for Fringe Decks
			Or, enter 'exit' to exit.
			Or, enter 'sections' to see the sections.

		Doc
	end

	def self.choose_section
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
			elsif input == "sections"
				choose_section
			end
		end
	end

	def self.standard_meta_decks

		smd_doc
		
		input = nil
		while input != 'exit'
			input = gets.strip.downcase.to_s
			if input == "1"
				puts "Best Decks:"
				@best_decks = HearthstoneTopDecks::Scraper.best_standard_meta_decks
				@best_decks.each do |deck|
					puts deck
				end
				HearthstoneTopDecks::Decks.choose_deck
				
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

			elsif input == "sections"
				self.choose_section

			elsif input == "back"
				self.standard_meta_decks

			else 
				puts "Invalid input"
			end
		end
	end

	def self.top_community_decks
		input = nil
		while input != 'exit'
			input = gets.strip.downcase.to_s
			puts "Top Community Decks:"
			@top_community_decks = HearthstoneTopDecks::Scraper.top_community_decks
			@top_community_decks.each do |deck|
				puts deck
			end
			puts ""
			if input == "sections"
				self.choose_section
			end
		end
	end

	def self.recent_updated_deck_guides
		puts "Recent/Updated Deck Guides:"
		@recent_guides = HearthstoneTopDecks::Scraper.recent_updated_deck_guides
		@recent_guides.each do |deck|
			puts deck 
		end
		if input == "sections"
			self.choose_section
		end
	end

	def self.new_community_decks
		puts "New Community Decks:"
		@new_community = HearthstoneTopDecks::Scraper.new_community_decks
		@new_community.each do |deck|
			puts deck
		end
		HearthstoneTopDecks::Decks.new_community_decks
		if input == "sections"
			self.choose_section
		end
	end

	def self.featured_decks
		puts "Featured Decks:"
		@featured = HearthstoneTopDecks::Scraper.featured_decks
		@featured.each do |deck|
			puts deck
		end
		HearthstoneTopDecks::Decks.featured_decks
		if input == "sections"
			self.choose_section
		end
	end
end

#like I want to use more files and isolate functionality, but I don't think
#I really have too... >.> <.< T.T