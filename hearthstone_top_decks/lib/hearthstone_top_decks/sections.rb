class HearthstoneTopDecks::Sections

	attr_accessor :section

	def self.section

		@sections = HearthstoneTopDecks::Scraper.sections 

	end

end

#like I want to use more files and isolate functionality, but I don't think
#I really have too... >.> <.< T.T