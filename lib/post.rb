# Post

class Post
    attr_accessor :author
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
        @author = nil
    end

    def self.all
        @@all
    end

    def author_name
        if @author
            return @author.name
        end
    end
end