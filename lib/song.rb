
 class Song

  @@all = []
  
  attr_accessor :name, :genre
  attr_reader :artist
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
    # @artist = artist
  end
    
  def self.all
    @@all
  end
  
  def self.destroy_all
    # @@all = []
    self.all.clear
    # all.clear
    # self.all = []
  end
  
  def save
    @@all << self
    # self.class.all << self
  end
  
  def self.create(name)
    song = new(name)
    song.save
    song
  end
  
  def artist
    @artist
  end
  
  def artist=(name)
    @artist = name
    artist.add_song(self)
  end
  
  def genre=(genre)
    # genre.add_song(self) unless genre.songs.include?self
    @genre = genre 
    genre.songs << self unless genre.songs.include?(self)
  end
  
  def self.find_by_name(name)
    all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    find_by_name(name)|| create(name)
  end
end