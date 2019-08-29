class Song
  
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = Array.new
  
  
  def initialize(song_name, song_artist, song_genre)
  #assign attributes
    @name = song_name
    @artist = song_artist
    @genre = song_genre
  #increment the total number of songs
    @@count += 1
  #add the artist to the list(duplicates will be used for counting later)
    @@artists << song_artist
  #add the genre to the list(duplicates will be used for counting later)
    @@genres << song_genre
    
  end
  
  def self.count
    #returns the total number of songs
    @@count
    
  end
  
  def self.artists
    #using .uniq will remove duplicates
    @@artists.uniq
    
  end
  
  def self.artist_count
    # I founf the .inject method in the Enumerable module
    # It will pass the elements into the hash and increment and return the artist_count
    @@artists.inject(Hash.new(0)) { |artist_count, i| artist_count[i] += 1 ; artist_count}
    
  end
  
  def self.genres
    
    @@genres.uniq
    
  end
  
  def self.genre_count

    # Same function as artist_count but with the @@genres array
    @@genres.inject(Hash.new(0)) { |genre_count, i| genre_count[i] += 1 ; genre_count}

  end
  
end