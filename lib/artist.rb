class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def instantiate(name)
    @name = name
  end
  
  def self.all 
    @@all
  end
  
end