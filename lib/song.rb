require 'pry'

class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {} 
  @@artist_count = {}
  
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
  
  def initialize(name,artist,genre)
    @@count += 1 
    @name = name
    @artist = artist 
    @genre = genre
    
    if @@genres.include?(@genre)
       @@genre_count[@genre] += 1
    else 
   #   @@genres << @genre
      @@genre_count[@genre] = 1  
    end 
    
    if @@artists.include?(@artist)
       @@artist_count[@artist] += 1
    else 
    #  @@artists << @artist 
      @@artist_count[@artist] = 1
    end 
    
     @@artists << @artist 
      @@genres << @genre
  
  end 
  
  attr_accessor :name, :artist, :genre
  
  
end 
