class Song
   attr_accessor :name, :artist 

   @@all = []

   def initialize(name)
      @name = name
      save 
   end 

   def save
      @@all << self 
   end 

   def self.all
      @@all 
   end 

   def artist_name
      # returns nil if the song does not have an artist
      if !artist
         nil 
      else 
         artist.name
      end 
   end 

end 