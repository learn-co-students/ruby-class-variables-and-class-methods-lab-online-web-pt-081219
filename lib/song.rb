=begin
  class Song
  attr_accessor :name, :artist, :genre
  @@count = 0 #comes before initialize
  @@artists = #[]
  @@genres = #[]

  def initialize#(name,artist,genre) #initialize method when a new method is call
      @name = name
      @artist = artist
      @genre = genre
      @@count +=1
      @@artists << artist
      @@genres << genre 
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
    @@genre_count = Hash.new#(0)
    @@genre_count.each #{|genres| genre_count[genres] += 1}
    genre_count  
  end

def self.artist_count
  artist_count = Hash.new#(0)
  @artist.each #{|artists| artist_count#[artists] += 1}
  artist_count
end

end
=end
class Song

  attr_accessor :name, :artist, :genre
 @@count = 0
 @@artists = []
 @@genres = []

  def initialize(song_name,artist,genre)
   @name = song_name
   @artist = artist
   @genre = genre
   @@count += 1
   @@artists << artist
   @@genres << genre
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
   genre_count = Hash.new(0)
   @@genres.each {|genre| genre_count[genre] += 1}
   genre_count
 end

  def self.artist_count
   artist_count = Hash.new(0)
   @@artists.each {|artist| artist_count[artist] += 1}
   artist_count
 end

end