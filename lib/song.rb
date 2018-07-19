# Class song
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@unique_artists = []
  @@unique_genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@unique_artists << artist unless @@unique_artists.include?(artist)
    @@unique_genres << genre unless @@unique_genres.include?(genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@unique_artists
  end

  def self.genres
    @@unique_genres
  end

  def self.artist_count
    @acount = {}
    @@artists.each { |artist|
      @acount[artist] ? @acount[artist] += 1 : @acount[artist] = 1
    }
    @acount
  end

  def self.genre_count
    @gcount = {}
    @@genres.each { |genre|
      @gcount[genre] ? @gcount[genre] += 1 : @gcount[genre] = 1
    }
    @gcount
  end
end
