require_relative './artist.rb'
require_relative './post.rb'
require_relative './song.rb'
require 'pry'

class Author

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []

        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        self.posts << post
        post.author = self
    end

    def self.post_count
        Post.all.count 
    end

end