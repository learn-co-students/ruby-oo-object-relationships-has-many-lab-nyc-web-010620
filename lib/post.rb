require_relative './artist.rb'
require_relative './author.rb'
require_relative './post.rb'
require_relative './song.rb'

class Post

    @@all = []

    attr_accessor :title

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

end