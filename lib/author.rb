class Author
   attr_accessor :name, :post 

   @@all = []

   def initialize(name)
      @name = name 

      @@all << self 
   end 

   def posts
      Post.all.select{|post| post.author == self}
   end 

   # takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
   def add_post(post)
      post.author = self 
   end 
   
   # takes in an argument of a post title, creates a new post with it and associates the post and author
   def add_post_by_title(title)
      new_post = Post.new(title)
      self.add_post(new_post)
   end 

   # class method that returns the total number of posts associated to all existing authors
   def self.post_count
      Post.all.map{|post| post.author}.count 
   end 

end 