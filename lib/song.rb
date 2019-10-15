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
    song = self.new
    artist = Artist.find_or_create_by_name(artist_song_genre[1])
    artist.add_song(song)
  end
  
  def artist_name=(given_name)
    self.artist = Artist.find_or_create_by_name(given_name)
  end
  
end