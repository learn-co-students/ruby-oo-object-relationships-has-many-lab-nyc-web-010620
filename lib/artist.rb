require 'pry'
class Artist
   attr_accessor :name, :song 

   @@all = []

   def initialize(name)
      @name = name
      # @songs = []
      @@all << self
   end 

   # takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
   # it is the artist's responsibility to add a new song to their collection
   # thus, we write the method that adds songs to an artist's collection in the Artist class
   def add_song(song)
      song.artist = self 
      # @songs << song 
   end 

   # takes in an argument of a song name, creates a new song with it and associates the song and artist
   # use the logic of the #add_song method, which adds a song to an artist's collection and tells that song 
   # that it belongs to that particular artist. 
   # But, we also need to create a new song using the name and genre from the arguments.
   def add_song_by_name(song)
      song = Song.new(song)
      self.add_song(song)  
   end 

   def songs
      Song.all.select{|song| song.artist == self}
   end 

   def self.all
      @@all 
   end 

   # class method that returns the total number of songs associated to all existing artists
   def self.song_count
      Song.all.map{|song| song.artist}.count 
   end 

end 