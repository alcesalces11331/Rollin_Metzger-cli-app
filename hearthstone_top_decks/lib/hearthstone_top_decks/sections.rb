class HearthstoneTopDecks::Sections

	attr_accessor :section

	def self.section
		#here we'll scrape all the sections on hearthstonetopdecks.com
		#then we'll scrape the decks from those sections into an array and put that
		#array in the corresponding section's value
		@sections = {}

		meta = self.new

		sections
	end


end