class HearthstoneTopDecks::Sections

	attr_accessor :section

	def self.section
		#here we'll scrape all the sections on hearthstonetopdecks.com
		#then we'll scrape the decks from those sections into an array and put that
		#array in the corresponding section's value

		@sections = HearthstoneTopDecks::Scraper.sections 

		#@meta_decks = HearthstoneTopDecks::Decks.meta_decks
		#sections[:Top_Standard_Meta_Decks] = @meta_decks
		#sections 
	end


end