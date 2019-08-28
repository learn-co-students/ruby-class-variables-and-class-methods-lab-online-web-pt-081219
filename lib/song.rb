class Song 
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
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
        genre_hash = Hash.new(0) # key: genre => value "songs"
        @@genres.each do |genre|
            genre_hash[genre] += 1 
        end
        genre_hash
    end

    def self.artist_count
        self.array_to_hash(@@artists)
    end

    def self.array_to_hash(array)
        hash = Hash.new(0) # key: genre => value "songs"
        array.each do |i|
            hash[i] += 1 
        end
        hash
    end
end