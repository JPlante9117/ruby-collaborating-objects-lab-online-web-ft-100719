class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(file_name)
    artist_song_genre = file_name.gsub(/(.mp3)/, "").split(" - ")
    song = self.new(artist_song_genre[1])
  end
  
  def artist_name=(name)
    if self.artist.nil?
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
end