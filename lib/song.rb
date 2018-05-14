require 'pry'
class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file)
    song_array = file.split(" - ")
    artist_name = song_array[0]
    song_name = song_array[1]
    genre = song_array[2].chomp(".mp3")
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    song.save
    binding.pry
  end
end