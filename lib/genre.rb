class Genre
  extend Concerns::Findable
   
  @@all = []
  
  attr_accessor :name, :artists
  attr_reader:songs
  
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
    # @@all = []
    self.class.all << self
  end
  
  def self.create(name)
		genre = self.new(name)
		genre.save
		genre
	end
  
  def artists
    songs.collect{|s| s.artist}.uniq
  end
  
end