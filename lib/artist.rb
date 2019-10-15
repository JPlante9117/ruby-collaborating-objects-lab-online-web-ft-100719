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
  
  def songs
    Song.all.select { |songs| songs.artist == self }
  end
  
  def add_song
    
  end
  
  def self.find_or_create_by_name(name)
    if self.name.nil?
      self.name = Artist.new(name)
    else
      self.name = name
    end
  end
  
  def print_songs
    
  end
  
end