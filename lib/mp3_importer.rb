class MP3Importer
  
  attr_accessor :filepath
  
  def initialize(filepath)
    @filepath = filepath
  end
  
  def files(filepath)
    Dir["./spec/fixtures/mp3s/*.mp3"]
  end
  
  def import(list_of_files)
    list_of_files.each { |filename| Song.new_by_filename(filename) }
  end
  
end