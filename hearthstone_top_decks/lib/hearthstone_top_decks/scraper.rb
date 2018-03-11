class HearthstoneTopDecks::Scraper

	#deck = Deck.find(1)
	#deck.html #=> html
	#Scraper.scrape_deck_html(deck.html)

	def get_page
		Nokogiri::HTML(open("http://www.hearthstonetopdecks.com")
	end

	def make_sections
	end

	def make_decks
	end

	def scrape_decks_index
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

end
