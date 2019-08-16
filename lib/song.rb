class Song 
  @@count = 0 
  @@genres = []
  @@artists = []
  @@artists_count = {}
  @@genre_count = {}
  
  def self.count
    @@count
  end 
  
  def self.genres 
    @@genres
  end
  
  def self.artists
    if @@artists.length > 1
     
        @@artists.each do |el|
          @@artists_count[el] ? @@artists_count[el] += 1: @@artists_count[el] = 1 
        end 
        @@artists.uniq
     end
  end
  
  def self.genres
    if @@genres.length > 1
   
         @@genres.each do |el| 
      
          @@genre_count[el] ? @@genre_count[el] += 1 : @@genre_count[el] = 1 
          
          end 
          @@count_the_genre = @@genre_count
        @@genres.uniq
    end
  end
  
  def self.genre_count
  
    @@count_the_genre
  end
  
  def self.artist_count
    @@artists_count
  end 
  
  
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre 
    @@artists << artist
  end
  
  attr_reader :name, :artist, :genre
  
end