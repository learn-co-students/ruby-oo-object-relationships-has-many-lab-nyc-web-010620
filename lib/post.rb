class Post

    attr_accessor :title, :author
    
    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        save
    end

    def save
        self.class.all << self
    end

    def author_name
        @author.name if @author
    end

end