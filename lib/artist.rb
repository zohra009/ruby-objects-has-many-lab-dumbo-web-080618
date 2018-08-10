class Artist
  attr_accessor :name, :songs

  def initialize(name)
     @name = name
     @song = [] #we wanna an array of new songs so do this

  end
def songs
  @song
end

  def add_song(song)
      @song << song # we're pushing is argument song in @song array
      song.artist = self
  end
def add_song_by_name(song_name)
 #to prevent repeat of this add a variable to
  song = Song.new(song_name) #using Song class and pushing it in argument song_name
  song.artist = self # puting artists song in class Song
  @song << song # only put the song name array not song.artist whic includes the artist
end
def self.song_count
  Song.all.count

end

end
