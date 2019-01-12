class Artist
	attr_accessor :name

@@all = []

	def initialize(name)
		@name = name
		@@all << self		
	end
	
	def self.all
		@@all
	end

	def new_song(name, genre) 
	# takes in an argument of a name and genre, creates a new song and should know that it belongs to the artist
		Song.new(name, self, genre)
	end

	def songs
	# iterates through all songs and finds the songs that belong to that artist
		Song.all.select do |song|
			song.artist == self
		end
	end
	
	def genres
	# iterates over that artist's songs and collects the genre of each song
		songs.map do |song|
			song.genre
		end
	end
end