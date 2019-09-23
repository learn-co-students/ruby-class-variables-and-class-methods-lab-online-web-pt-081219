require 'pry'
class Song 
  @@count = 0
  @@name = []
  @@artist = []
  @@genre = []
  
 attr_accessor :name, :artist, :genre
 
 def initialize(name, artist, genre)
  @name = name
  @artist = artist 
  @genre = genre 
  @@count += 1 
  @@artist << artist
  @@name << name
  @@genre << genre
  #binding.pry
  end
  

def class_variable_get(category)
  puts category
end 
