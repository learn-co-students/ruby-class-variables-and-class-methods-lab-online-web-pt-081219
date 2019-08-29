class Song
  
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = Array.new
  
  
  def initialize(song_name, song_artist, song_genre)
    
    @name = song_name
    @artist = song_artist
    @genre = song_genre
    
    @@count += 1
    
    @@artists << song_artist

    @@genres << song_genre
    
  end
  
  def self.count
    
    @@count
    
  end
  
  def self.artists
    
    @@artists.uniq
    
  end
  
  def self.artist_count
    
    @@artists.inject(Hash.new(0)) { |artist, count| artist[count] += 1 ; artist}
    
  end
  
  def self.genres
    
    @@genres.uniq
    
  end
  
  def self.genre_count
    
    @@genres.inject(Hash.new(0)) { |genre, count| genre[count] += 1 ; genre}

  end
  
end