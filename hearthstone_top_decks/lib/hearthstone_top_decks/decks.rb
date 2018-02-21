class HearthstoneTopDecks::Decks

	attr_accessor :klass, :archetype, :sub_archetype, :winrate, :crafting_cost


	def self.meta_decks
		#here we will scrape hearthstonetopdecks.com and return the deck lists
		#for that data
		#HearthstoneTopDecks::HearthstoneTopDecksScraper.new

		meta_decks_sections = {}
		meta_decks_best = []

		deck_1 = self.new
		deck_1.klass = "Warlock"
		deck_1.archetype = "Control"
		deck_1.sub_archetype = "Cubelock"
		deck_1.winrate = "58%"
		deck_1.crafting_cost = "6890 dust"


		deck_2 = self.new
		deck_2.klass = "Warlock"
		deck_2.archetype = "Control"
		deck_2.sub_archetype = "Cubelock"
		deck_2.winrate = "58%"
		deck_2.crafting_cost = "6890 dust"

		meta_decks_best << deck_1 
		meta_decks_best << deck_2

		meta_decks_sections[:best] = meta_decks_best

		meta_decks_sections
	end

end