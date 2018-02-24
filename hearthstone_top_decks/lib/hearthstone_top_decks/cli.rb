class HearthstoneTopDecks::CLI

	def call
		HearthstoneTopDecks::Scraper.scraper
		list_section
		HearthstoneTopDecks::Sections.choose_section
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
end