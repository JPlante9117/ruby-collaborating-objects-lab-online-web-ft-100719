class MP3Importer
  
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    file_arr = Dir.glob["#{path}/*.mp3"]
    puts file_arr
  end
  
  def import(list_of_files)
    list_of_files.each { |filename| Song.new_by_filename(filename) }
  end
  
end