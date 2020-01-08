# song

class Song
    attr_reader :name
    attr_accessor :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            return self.artist.name
        end
    end

end