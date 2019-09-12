require 'pry'
class Song 
  
  @@count = 0 
  @@artists = Array.new 
  @@genres = Array.new 
  
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
  @name = name 
  @artist = artist
  @genre = genre 
  @@count += 1
  @@artists << @artist
  @@genres << @genre 
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
    self.counter_method(@@genres)
  end 
  
 def self.artist_count 
   self.counter_method(@@artists)
  end 
  
 def self.counter_method(array)
 thing_counter = Hash.new(0) 
  array.each do |key|
    thing_counter[key] += 1
    end 
   thing_counter
end 
end  

 
 