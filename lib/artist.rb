class Artist
  
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
  
  def songs
    @songs
  end
  
   def add_song(song)
    if song.artist != self
      song.artist = self
    end
    
    if !(@song.include?(song)
      @song << self
    end
    end
    
  end
  
end