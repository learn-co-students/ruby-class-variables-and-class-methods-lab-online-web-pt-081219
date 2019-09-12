class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name =(name)
    @artist =(artist)
    @genre =(genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    results = {}
    @@genres.each do |genre|
      if results[genre] == nil
        results[genre] = 0
      end
      results[genre] += 1
    end
    results
  end

  def self.artist_count
    results = {}
    @@artists.each do |artist|
      if results[artist] == nil
        results[artist] = 0
      end
      results[artist] += 1
    end
    results
  end
end
