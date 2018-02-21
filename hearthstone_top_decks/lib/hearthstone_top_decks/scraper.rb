#Here, I'll use a separate class for the scraper only and then fully commit to
#each part doing as little as possible.

class HearthstoneTopDecks::Scraper

	attr_accessor :sections, :community_decks, :featured_decks, :top_community_decks, :new_community_decks, :best_standard_meta_decks, :great_standard_meta_decks, :fringe_standard_meta_decks

	@sections = []
	@featured_decks = []
	@top_community_decks = []
	@best_standard_meta_decks = []
	@great_standard_meta_decks = []
	@fringe_standard_meta_decks = []

	def self.scraper
		doc = Nokogiri::HTML(open("http://www.hearthstonetopdecks.com"))
	end

	def self.sections
		@sections
	end

	def self.community_decks
		@community_decks
	end

	def self.featured_decks
		@featured_decks
	end

	def self.top_community_decks
		@top_community_decks
	end

	def self.new_community_decks
		@new_community_decks
	end

	def self.great_standard_meta_decks
		@great_standard_meta_decks
	end

	def self.best_standard_meta_decks
		@best_standard_meta_decks
	end

	def self.fringe_standard_meta_decks
		@fringe_standard_meta_decks
	end

end