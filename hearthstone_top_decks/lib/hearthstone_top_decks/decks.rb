class HearthstoneTopDecks::Decks

	attr_accessor :name, :url, :klass, :cost, :type, :style, :card_list, :phormat, :meta_deck

	@@all = []

	def self.new_from_index_page(doc)
		self.new(
			doc.css('a').text,
			doc.css('a').attribute('href').value
			)
	end

	def initialize(name = nil, url = nil)
		@name = name
		@url = url
		@@all << self
		deck_specs
		list
	end

	def self.all
		@@all
	end

	def self.find(id)
		self.all[id-1]
	end

	def deck_specs
		page.css('.deck-list-sidebar ul li').collect do |info|
			strong = info.css('strong').text
			@klass = info.css('a').text if strong == "Class:"
			@phormat = info.css('a').text if strong == "Format:"
			@type = info.css('a').text if strong == "Type:"
			@style = info.css('a').text if strong == "Style:"
			@meta_deck = info.css('a').text if strong == "Meta Deck:"
			@cost = info.text if strong == "Dust Cost:"
		end
	end

	def list
		@card_list = {}
		page.css('.card-frame').each do |card|
			@card_list[card.css('.card-name').text] = card.css('.card-count').text
		end
	end

	def page
		page ||= Nokogiri::HTML(open(self.url))
	end
end