class Genre
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
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
  
end