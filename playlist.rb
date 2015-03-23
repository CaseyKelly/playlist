require_relative 'song'
class Playlist
  attr_accessor :songs, :playlist_name

  def initialize(playlist_name)
    @playlist_name = playlist_name
    @songs = []
  end

  def name
    @playlist_name
  end

  def is_empty?
    @songs.empty?
  end

  def add_song(new_song)
    @songs << new_song
  end

  def songs
    @songs
  end

  def remove_song(song)
    @songs.delete(song)
  end

  def song_names
    @songs.map do |song|
      song.name
    end
  end

  def swap(song1, song2)
    @songs[0], @songs[3] = @songs[3], @songs[0]
  end

  def total_length
    @songs.map do |song|
      song.length
    end.inject(:+)
  end

end
