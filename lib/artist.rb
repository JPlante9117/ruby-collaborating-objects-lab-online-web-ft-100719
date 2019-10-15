class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def instantiate(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def songs
    
  end
  
  def add_song
    
  end
  
  def self.find_or_create_by_name
    
  end
  
  def print_songs
    
  end
  
end