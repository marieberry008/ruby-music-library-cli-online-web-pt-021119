class Artist
  extend Concerns::Findable
  
  attr_accessor :name, :songs, :genres
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    # @@all = []
    self.all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
		artist = self.new(name)
		artist.save
		artist
	end
	
	def add_song(song)
	  song.artist = self unless song.artist
	  self.songs << song unless self.songs.include?(song)
	 # songs.push song unless songs.include?(song)
  end
  
  def genres
    # songs.map(&:genre).uniq
    self.songs.collect{|s| s.genre}.uniq
  end
	  
end
