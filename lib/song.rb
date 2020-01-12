class Song

    attr_accessor :name, :artist

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        save
    end

    def save
        self.class.all << self
    end

    def artist_name
      if self.artist
        self.artist.name
      else
        return nil
      end
    end

end