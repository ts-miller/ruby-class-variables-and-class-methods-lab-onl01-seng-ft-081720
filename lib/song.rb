class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = Hash.new(0)
        @@genres.each { |genre_element| genre_hash[genre_element] += 1 }
        genre_hash
    end

    def self.artist_count
        artist_hash = Hash.new(0)
        @@artists.each { |artist_element| artist_hash[artist_element] += 1 }
        artist_hash
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end
end