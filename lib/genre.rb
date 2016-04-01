class Genre
  @@all = []
  attr_accessor :name, :song
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    genre = self.new(name)
    genre.save
    genre
  end

  def add_song(song)
    if !(@songs.include?(song))
    @songs << song
    song.artist= self
    end
  end

  def artists
    artists = []
    @songs.each do |song|
     artists << song.artist
    end
    artists.uniq!
    end
end