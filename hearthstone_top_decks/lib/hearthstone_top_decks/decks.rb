class HearthstoneTopDecks::Decks

	def self.featured_decks
		@featured_decks = HearthstoneTopDecks::Scraper.featured_decks_html
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s
			
			if input == "1"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@featured_decks[0]))
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

			elsif input == "2"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@featured_decks[1]))
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

			elsif input == "3"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@featured_decks[2]))
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
					
			elsif input == "4"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@featured_decks[3]))
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
					
			elsif input == "5"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@featured_decks[4]))
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
	end

	def self.new_community_decks
		@new_community_decks = HearthstoneTopDecks::Scraper.new_community_decks_html
		puts <<~DOC
				Which deck would you like to look at?
				Or, enter 'exit' to exit.
				DOC
		input = nil
		while input != "exit"
			input = gets.strip.downcase.to_s
			
			if input == "1"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@new_community_decks[0]))
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

			elsif input == "2"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@new_community_decks[1]))
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

			elsif input == "3"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@new_community_decks[2]))
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
					
			elsif input == "4"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@new_community_decks[3]))
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
					
			elsif input == "5"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@new_community_decks[4]))
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
			
			if input == "1"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@top_community_decks[0]))
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

			elsif input == "2"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@top_community_decks[1]))
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

			elsif input == "3"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@top_community_decks[2]))
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
					
			elsif input == "4"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@top_community_decks[3]))
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
					
			elsif input == "5"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@top_community_decks[4]))
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
			
			if input == "1"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@recent_deck_guides[0]))
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

			elsif input == "2"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@recent_deck_guides[1]))
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

			elsif input == "3"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@recent_deck_guides[2]))
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
					
			elsif input == "4"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@recent_deck_guides[3]))
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
					
			elsif input == "5"
				deck_info = {}
				deck_list = {}

				doc = Nokogiri::HTML(open(@recent_deck_guides[4]))
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
		input = gets.strip.downcase.to_i

		deck_info = {}
		deck_list = {}
		doc = Nokogiri::HTML(open(@best_decks[input - 1]))
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