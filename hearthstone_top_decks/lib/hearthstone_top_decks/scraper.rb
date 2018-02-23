#Here, I'll use a separate class for the scraper only and then fully commit to
#each part doing as little as possible.
class HearthstoneTopDecks::Scraper

	attr_accessor :recent_updated_deck_guides, :sections, :featured_decks, :top_community_decks, :new_community_decks, :best_standard_meta_decks, :great_standard_meta_decks, :fringe_standard_meta_decks

	@sections = []
	@featured_decks = []
	@top_community_decks = []
	@new_community_decks = []
	@recent_updated_deck_guides = []
	@best_standard_meta_decks = []
	@great_standard_meta_decks = []
	@fringe_standard_meta_decks = []

	def self.scraper
		doc = Nokogiri::HTML(open("http://www.hearthstonetopdecks.com"))
		#binding.pry
		doc.css('h3.text-center').children.each do |node|
			@sections << node.text
		end

		doc.css('.meta-box')[0].css('ul li').children.each do |node|
			@featured_decks << node.text
		end

		doc.css('.meta-box')[1].css('ul li').children.each do |node|
			@new_community_decks << node.text
		end

		doc.css('.meta-box')[2].css('ul li').children.each do |node|
			@recent_updated_deck_guides << node.text
		end

		doc.css('.meta-box')[3].css('ul li').children.each do |node|
			@top_community_decks << node.text
		end

		

	end

	def self.sections
		@sections
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