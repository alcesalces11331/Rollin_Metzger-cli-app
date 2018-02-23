require 'pry'
class HearthstoneTopDecks::Scraper

	attr_accessor :recent_updated_deck_guides, :sections, :featured_decks, :top_community_decks, :new_community_decks, :best_standard_meta_decks, :great_standard_meta_decks, :fringe_standard_meta_decks, :top_standard_meta_decks

	@sections = []
	@featured_decks = []
	@top_community_decks = []
	@new_community_decks = []
	@recent_updated_deck_guides = []
	@top_standard_meta_decks = []
	@best_standard_meta_decks = []
	@great_standard_meta_decks = []
	@fringe_standard_meta_decks = []

	def self.scraper
		doc = Nokogiri::HTML(open("http://www.hearthstonetopdecks.com"))
	
		doc.css('h3.text-center').children.each do |node|
			#binding.pry
			@sections.unshift(node.text)
		end

		doc.css('.meta-box')[0].css('ul li').children.each do |node|
			@featured_decks.unshift(node.text)
		end

		doc.css('.meta-box')[1].css('ul li').children.each do |node|
			@new_community_decks.unshift(node.text)
		end

		doc.css('.meta-box')[2].css('ul li').children.each do |node|
			@recent_updated_deck_guides.unshift(node.text)
		end

		doc.css('.meta-box')[3].css('ul li').children.each do |node|
			@top_community_decks.unshift(node.text)
		end

		doc.css('.meta-box')[4].css('h4').each do |node|
			@top_standard_meta_decks.unshift(node.text)
		end

		doc.css('.deck-lists')[0].css('ul li').children.each do |node|
			@best_standard_meta_decks.unshift(node.text)
		end

		doc.css('.deck-lists')[1].css('ul li').children.each do |node|
			@great_standard_meta_decks.unshift(node.text)
		end

		doc.css('.deck-lists')[2].css('ul li').children.each do |node|
			@fringe_standard_meta_decks.unshift(node.text)
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

	def self.recent_updated_deck_guides
		@recent_updated_deck_guides
	end

	def self.top_standard_meta_decks
		@top_standard_meta_decks
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