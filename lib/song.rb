class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self.create
    song = Song.new
    @@all << song 
    song
  end
  
  def self.new_by_name(name)
    name = Song.new 
    @name = name 
  end
    
  def self.creat_by_name(name) 
    name = Song.new 
    @name = name 
    @@all << @name
  end
  
  def self.find_by_name(name)
    @@all.find (name)
  end
  
    
  def save
    self.class.all << self
  end

end
