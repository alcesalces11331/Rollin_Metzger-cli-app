require 'pry'
class HearthstoneTopDecks::Scraper

	def doc
		Nokogiri::HTML(open("http://www.hearthstonetopdecks.com"))
	end

	def make_decks
		doc.css('.deck-lists ul li').each do |r|
			#binding.pry
			HearthstoneTopDecks::Decks.new_from_index_page(r)

		end
	end

end
=begin

doc = Nokogiri::HTML(open(@featured_decks[input.to_i - 1]))
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
			puts
			puts "enter 'exit' to exit"
			input = gets.strip.downcase.to_s
		end
	end

	def self.scraper
		doc = Nokogiri::HTML(open("http://www.hearthstonetopdecks.com"))
	
		doc.css('h3.text-center').children.each do |node|
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
=end

