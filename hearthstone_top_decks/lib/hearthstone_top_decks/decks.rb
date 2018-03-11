class HearthstoneTopDecks::Decks

	attr_accessor :name, :url, :klass, :cost, :type, :style, :list, :phormat, :season, :meta_deck

	@@all = []

	def self.new_from_index_page(doc)
		self.new(
			doc.css('a').text,
			doc.attribute('href').value,
			)
	end

	def initialize(name = nil, url = nil)
		@name = name
		@url = url
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find(id)
		self.all[id-1]
	end

	def list
		@list 
		# nokogiri code
	end

	def klass
		@klass = page.css...
	end

	def type
		@type = page.css
	end

	def style
		@style = 
	end

	def phormat
		@phormat = 
	end

	def season
		@season =
	end

	def meta_deck
		@meta_deck =
	end

	def page
		page ||= Nokogiri::HTML(open(self.url))
	end


=begin
	def self.featured_decks
		@featured_decks = HearthstoneTopDecks::Scraper.featured_decks_html
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s
			
			deck_info = {}
			deck_list = {}

			

	def self.new_community_decks
		@new_community_decks = HearthstoneTopDecks::Scraper.new_community_decks_html
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s
			
			deck_info = {}
			deck_list = {}

			doc = Nokogiri::HTML(open(@new_community_decks[input.to_i - 1]))
			doc.css('.deck-list-sidebar ul li').each do |ele|
				strong = ele.css('strong').text
				deck_info["Class"] = ele.css('a').text if strong == "Class:"
				deck_info["Type"] = ele.css('a').text if strong == "Type:"
				deck_info["Style"] = ele.css('a').text if strong == "Style:"
				deck_info["Dust Cost"] = ele.text if strong == "Dust Cost:"
			end
			doc.css('.card-frame').each do |ele|
				deck_list[ele.css('.card-name').text] = ele.css('.card-count').text
			end
			deck_info.each do |key, value|
				puts "#{key} - #{value}"
				puts
			end
			deck_list.each do |key, value|
				puts "#{key} - #{value}"
			end
		end
	end

	def self.top_community_decks
		@top_community_decks = HearthstoneTopDecks::Scraper.top_community_decks_html
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s
			
			deck_info = {}
			deck_list = {}

			doc = Nokogiri::HTML(open(@top_community_decks[input.to_i - 1]))
			doc.css('.deck-list-sidebar ul li').each do |ele|
				strong = ele.css('strong').text
				deck_info["Class"] = ele.css('a').text if strong == "Class:"
				deck_info["Type"] = ele.css('a').text if strong == "Type:"
				deck_info["Style"] = ele.css('a').text if strong == "Style:"
				deck_info["Dust Cost"] = ele.text if strong == "Dust Cost:"
			end
			doc.css('.card-frame').each do |ele|
				deck_list[ele.css('.card-name').text] = ele.css('.card-count').text
			end
			deck_info.each do |key, value|
				puts "#{key} - #{value}"
				puts
			end
			deck_list.each do |key, value|
				puts "#{key} - #{value}"
			end
		end
	end

	def self.recent_deck_guides
		@recent_deck_guides = HearthstoneTopDecks::Scraper.recent_updated_deck_guides_html
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s
		
			deck_info = {}
			deck_list = {}

			doc = Nokogiri::HTML(open(@recent_deck_guides[input.to_i - 1]))
			doc.css('.deck-list-sidebar ul li').each do |ele|
				strong = ele.css('strong').text
				deck_info["Class"] = ele.css('a').text if strong == "Class:"
				deck_info["Type"] = ele.css('a').text if strong == "Type:"
				deck_info["Style"] = ele.css('a').text if strong == "Style:"
				deck_info["Dust Cost"] = ele.text if strong == "Dust Cost:"
			end
			doc.css('.card-frame').each do |ele|
				deck_list[ele.css('.card-name').text] = ele.css('.card-count').text
			end
			deck_info.each do |key, value|
				puts "#{key} - #{value}"
				puts
			end
			deck_list.each do |key, value|
				puts "#{key} - #{value}"
			end
		end
	end

	def self.standard_best_decks
		@best_decks = HearthstoneTopDecks::Scraper.best_standard_meta_decks_html
		@best_decks_length = @best_decks.length
		puts <<~DOC
				There are #{@best_decks_length} to look at.
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s

			deck_info = {}
			deck_list = {}
			doc = Nokogiri::HTML(open(@best_decks[input.to_i - 1]))
			doc.css('.deck-list-sidebar ul li').each do |ele|
					strong = ele.css('strong').text
					deck_info["Class"] = ele.css('a').text if strong == "Class:"
					deck_info["Type"] = ele.css('a').text if strong == "Type:"
					deck_info["Style"] = ele.css('a').text if strong == "Style:"
					deck_info["Dust Cost"] = ele.text if strong == "Dust Cost:"
			end
			doc.css('.card-frame').each do |ele|
				deck_list[ele.css('.card-name').text] = ele.css('.card-count').text
			end
			deck_info.each do |key, value|
				puts "#{key} - #{value}"
				puts
			end
			deck_list.each do |key, value|
				puts "#{key} - #{value}"
			end
		end
	end

	def self.standard_great_decks
		@great_decks = HearthstoneTopDecks::Scraper.great_standard_meta_decks_html
		@great_decks_length = @great_decks.length
		puts <<~DOC
				There are #{@best_decks_length} to look at.
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s

			deck_info = {}
			deck_list = {}
			doc = Nokogiri::HTML(open(@great_decks[input.to_i - 1]))
			doc.css('.deck-list-sidebar ul li').each do |ele|
					strong = ele.css('strong').text
					deck_info["Class"] = ele.css('a').text if strong == "Class:"
					deck_info["Type"] = ele.css('a').text if strong == "Type:"
					deck_info["Style"] = ele.css('a').text if strong == "Style:"
					deck_info["Dust Cost"] = ele.text if strong == "Dust Cost:"
			end
			doc.css('.card-frame').each do |ele|
				deck_list[ele.css('.card-name').text] = ele.css('.card-count').text
			end
			deck_info.each do |key, value|
				puts "#{key} - #{value}"
				puts
			end
			deck_list.each do |key, value|
				puts "#{key} - #{value}"
			end
		end
	end

	def self.standard_fringe_decks
		@fringe_decks = HearthstoneTopDecks::Scraper.fringe_standard_meta_decks_html
		@fringe_decks_length = @fringe_decks.length
		puts <<~DOC
				There are #{@best_decks_length} to look at.
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s

			deck_info = {}
			deck_list = {}
			doc = Nokogiri::HTML(open(@fringe_decks[input.to_i - 1]))
			doc.css('.deck-list-sidebar ul li').each do |ele|
					strong = ele.css('strong').text
					deck_info["Class"] = ele.css('a').text if strong == "Class:"
					deck_info["Type"] = ele.css('a').text if strong == "Type:"
					deck_info["Style"] = ele.css('a').text if strong == "Style:"
					deck_info["Dust Cost"] = ele.text if strong == "Dust Cost:"
			end
			doc.css('.card-frame').each do |ele|
				deck_list[ele.css('.card-name').text] = ele.css('.card-count').text
			end
			deck_info.each do |key, value|
				puts "#{key} - #{value}"
				puts
			end
			deck_list.each do |key, value|
				puts "#{key} - #{value}"
			end
		end
	end
=end
end