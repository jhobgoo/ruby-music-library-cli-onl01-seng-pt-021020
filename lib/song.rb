class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil
      self.artist = artist
    end
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end
  
  def self.destroy_all
    @@all.clear
  end

end