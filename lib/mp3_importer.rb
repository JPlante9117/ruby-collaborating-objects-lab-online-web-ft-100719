class MP3Importer
  
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    Dir["#{path}/*.mp3"].map { |file| file.split("/").last }
  end
  
  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end
  
end