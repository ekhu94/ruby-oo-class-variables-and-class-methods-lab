class Song
    @@count = 0
    @@genres = []
    @@genre_count = {}
    @@artists = []
    @@artist_counter = {}

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

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
        counter = Hash.new(0)
        @@genres.each { |genre| counter[genre] += 1 }
        counter
    end

    def self.artist_count
        counter = Hash.new(0)
        @@artists.each { |artist| counter[artist] += 1 }
        counter
    end
end