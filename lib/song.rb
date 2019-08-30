class Song 
  attr_accessor :name
  attr_reader :artist, :genre
  @@artists = []
  @@genres = []
  @@count = 0
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists 
    @@artists.uniq
  end
  def self.artist_count
    artist_hash = {}
    @@artists.each {|artist|
      if !artist_hash.include? artist 
        artist_hash[artist] = 1 
      else
        artist_hash[artist] += 1
      end
    }
    artist_hash
  end
  def self.genres 
    @@genres.uniq
  end
  def self.genre_count
    genre_hash = {}
    @@genres.each {|genre|
      if !genre_hash.include? genre
        genre_hash[genre] = 1 
      else
        genre_hash[genre] += 1
      end
    }
    genre_hash
  end
end