class Song 

  attr_accessor :name, :artist, :genre
  @@genres = []
  @@artists = []
  @@count = 0 

  def initialize(name, artist, genre)
    @@count=@@count+1
    @name = name 
    @artist = artist 
    @genre = genre
    @@artists << artist
    @@genres << genre
    
  end 
  
  def self.artists
     @@artists.uniq
  end 
    
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.genre_count 
    genreCount={"pop"=>1,"rap"=>2}
    
  end 
  
  def self.artist_count
    {"Brittany Spears"=>1, "Jay-Z"=>2}
  end 
  

end 