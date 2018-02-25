require 'pry'
class HearthstoneTopDecks::Scraper

	attr_accessor :recent_updated_deck_guides, :sections, :featured_decks, :top_community_decks, :new_community_decks, :best_standard_meta_decks, :great_standard_meta_decks, :fringe_standard_meta_decks, :top_standard_meta_decks

	@sections = []
	@featured_decks = []
	@featured_decks_html = []
	@top_community_decks = []
	@top_community_decks_html = []
	@new_community_decks = []
	@new_community_decks_html = []
	@recent_updated_deck_guides = []
	@recent_updated_deck_guides_html = []
	@top_standard_meta_decks = []
	@best_standard_meta_decks = []
	@best_standard_meta_decks_html = []
	@great_standard_meta_decks = []
	@great_standard_meta_decks_html = []
	@fringe_standard_meta_decks = []
	@fringe_standard_meta_decks_html = []

	def self.scraper
		doc = Nokogiri::HTML(open("http://www.hearthstonetopdecks.com"))
	
		doc.css('h3.text-center').children.each do |node|
			#binding.pry
			@sections.unshift(node.text)
		end

		doc.css('.meta-box')[0].css('ul li').children.each do |node|
			@featured_decks.unshift(node.text)
			@featured_decks_html.unshift(node.attribute('href').value)
		end

		doc.css('.meta-box')[1].css('ul li').children.each do |node|
			@new_community_decks.unshift(node.text)
			@new_community_decks_html.unshift(node.attribute('href').value)
		end

		doc.css('.meta-box')[2].css('ul li').children.each do |node|
			@recent_updated_deck_guides.unshift(node.text)
			@recent_updated_deck_guides_html.unshift(node.attribute('href').value)
		end

		doc.css('.meta-box')[3].css('ul li').children.each do |node|
			@top_community_decks.unshift(node.text)
			@top_community_decks_html.unshift(node.attribute('href').value)
		end

		doc.css('.meta-box')[4].css('h4').each do |node|
			@top_standard_meta_decks.unshift(node.text)
		end

		doc.css('.deck-lists')[0].css('ul li').children.each do |node|
			@best_standard_meta_decks.unshift(node.text)
			@best_standard_meta_decks_html.unshift(node.attribute('href').value)
		end

		doc.css('.deck-lists')[1].css('ul li').children.each do |node|
			@great_standard_meta_decks.unshift(node.text)
			@great_standard_meta_decks_html.unshift(node.attribute('href').value)
		end

		doc.css('.deck-lists')[2].css('ul li').children.each do |node|
			@fringe_standard_meta_decks.unshift(node.text)
			@fringe_standard_meta_decks_html.unshift(node.attribute('href').value)
		end
	end

	def self.scraper_featured_decks(input)
		deck_info = {}
		deck_list = {}

		if input > @featured_decks_html.length
			puts "No Deck Listed"
		elsif input == "1"
			doc = Nokogiri::HTML(open(@featured_decks_html[0]))
			doc.css('.deck-list-sidebar ul li').each do |ele|
				strong = ele.css('strong').text
				deck_info[:klass] = ele.css('a').text if strong == "Class"
				deck_info[:type] = ele.css('a').text if strong == "Type"
				deck_info[:style] = ele.css('a').text if strong == "Style"
				deck_info[:dust_cost] = ele.css('a').text if strong == "Dust Cost"
			end
			doc.css('.col-md-12').each do |ele|
				deck_list[ele.css('.card-name')] = ele.css('.card-count')
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

	def self.featured_decks_html
		@featured_decks_html
	end

	def self.top_community_decks_html
		@top_community_decks_html
	end

	def self.new_community_decks_html
		@new_community_decks_html
	end

	def self.recent_updated_deck_guides_html
		@recent_updated_deck_guides_html
	end

	def self.great_standard_meta_decks_html
		@great_standard_meta_decks_html
	end

	def self.best_standard_meta_decks_html
		@best_standard_meta_decks_html
	end

	def self.fringe_standard_meta_decks_html
		@fringe_standard_meta_decks_html
	end

end