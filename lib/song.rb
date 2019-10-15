class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @all 
  end
  
  def self.new_by_filename(file_name)
    song = self.new
    song.name = file_name.
    
  end
  
end