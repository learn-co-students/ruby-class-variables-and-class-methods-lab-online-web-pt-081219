class Song 
  #name genres artists
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres =[]
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    if @@genres.length > 0 
      unique_genres =[]
      unique_genres = @@genres.uniq{ |gnr| gnr}
    end
    unique_genres
  end
  def self.artists 
    if @@artists.length > 0 
      unique_artists =[]
      unique_artists = @@artists.uniq{ |art| art}
    end
    unique_artists
  end
  def self.genre_count
    genre_hash ={}
      @@genres.each do |key|
        if genre_hash[key]==nil 
          genre_hash[key] = 1
        else 
          genre_hash[key] += 1
        end
      end
      genre_hash
  end
  
  def self.artist_count
    artist_hash ={}
    @@artists.each do |art|
      if artist_hash[art] ==nil
        artist_hash[art] = 1
      else 
        artist_hash[art] +=1
      end
    end
    artist_hash
  end
  
end
      
    
  
  