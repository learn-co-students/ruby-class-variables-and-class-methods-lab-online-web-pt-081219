class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
   # if !@@artists.include?(artist)
      @@artists << artist
   # end
   # if !@@genres.include?(genre)
      @@genres << genre
   # end
    if @@artist_count[artist]
      @@artist_count[artist] += 1
    else
      @@artist_count[artist] =1
    end
    if @@genre_count[genre]
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genre_count
  end
  
  def self.artist_count
    @@artist_count
  end
end