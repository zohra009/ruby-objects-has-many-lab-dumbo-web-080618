class Song

  attr_accessor :artist, :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self #pushes new instances into a class variable called @@all upon initialization
  end
def self.all
  @@all
end
def name
@name
end


def artist_name
  if !(self.artist)
    return nil
  else
    return self.artist.name # to get artist name must access artist first then name 
  end

end

end
