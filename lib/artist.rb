class Artist
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = songs
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all = []
  end
  
  def self.create(name)
		artist = self.new(name)
		artist.save
		artist
	end
	
	def add_song
	  song.artist = self if song.artist == nil
	  self.songs << song unless self.songs.include?(song)
	  
	  # or instead:unless song.artistsong.artist == nil
  
  end
  
end