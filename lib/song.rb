class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil
      self.artist = artist
    end
    if genre != nil
      self.genre = genre
    end
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    if !@genre.songs.include?(self)
      @genre.songs << self
    end
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
  
  def self.find_by_name(name)
    self.all.detect do |song|
      song.name == name
    end
  end
  
  def self.find_or_create_by_name(name)
    if !(self.find_by_name(name))
      self.create(name)
    else
      self.find_by_name(name)
    end
  end
  
  def self.new_from_filename(filename)
    parts = name.split(" - ")
    artist_name, song, genre = part[0], part[1], part[2].gsub(".mp3", " ")
    artist = Artist.find_or_create_by_name(artist_name)
    genre = Genre.find_or_create_by_name(genre_category)

    new(artist_name, song, genre)
  end
  
end