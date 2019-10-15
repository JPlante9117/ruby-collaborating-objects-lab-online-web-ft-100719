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
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(given_name)
    unless @@all.select { |artist| artist.name == given_name }
      Artist.new(given_name)
    else
       @@all.select { |artist| artist.name == given_name }
    end
  end
  
  def print_songs
    puts songs
  end
  
end