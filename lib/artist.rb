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
  
  def song
  
end