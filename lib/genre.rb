class Genre
	attr_accessor :name

@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end
	
	def self.all
		@@all
	end

	def songs
		# iterates through all songs and finds the songs that belong to that genre 
		Song.all.select { |song| song.genre == self }

	end

	def artists
		# iterates over the genre's collection of songs and collects the artist that owns each song
		self.songs.map { |song| song.artist }
	end
	
end