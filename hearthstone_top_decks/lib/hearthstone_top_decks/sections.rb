class HearthstoneTopDecks::Sections

	attr_accessor :name

	@@all = []

	def self.new_from_index_page(doc)
		self.new(
			doc.css('.meta-box h3').text,
			doc.css('.meta-box ul li').children.each {|node| node.text}
			)
	end

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find(id)
		self.all[id-1]
	end

end