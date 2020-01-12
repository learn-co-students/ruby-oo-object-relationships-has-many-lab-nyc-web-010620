require_relative './artist.rb'
require_relative './author.rb'
require_relative './post.rb'
require_relative './song.rb'
require 'pry'
class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = [ ]

        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        @songs
    end

    def add_song(song)
        @songs << song
    end

end