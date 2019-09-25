require 'pry'

class Song

    attr_reader :name, :artist, :genre

    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = 3
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
        hash = {}
        @@genres.each do |genre|
            if hash[genre]
                hash[genre] += 1
            else
                hash[genre] = 1
            end
        end
        return hash
    end

    def self.artist_count
        hash_of_artists = {} # {artist => num of songs}
        @@artists.each do |artist|
            if hash_of_artists[artist]
                hash_of_artists[artist] += 1
            else
                hash_of_artists[artist] = 1
            end
        end
        return hash_of_artists
    end
end # End of Class
