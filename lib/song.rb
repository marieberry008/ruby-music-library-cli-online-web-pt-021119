class Song
  
  @@all = []
  
  attr_accessor :name, :song
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    @artist = artist
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @all = []
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    song = song.new(name)
    song.save
    song
  end
  
end