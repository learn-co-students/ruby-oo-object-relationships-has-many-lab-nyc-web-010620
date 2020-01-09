class Post 

attr_accessor :author, :title


@@all = []

  def initialize(title)
    @title = title
    @@all.push(self)
  end 
  
  def self.all
    @@all
  end 
  
  def author_name 
   self.author ? @author.name : nil 
  end 

  
end 