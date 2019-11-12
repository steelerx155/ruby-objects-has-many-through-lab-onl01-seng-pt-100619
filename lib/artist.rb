class Artist
  attr_accessor :name
  
  @@all = []
 
  def initialize(name)
    @name = name 
    @@all << self
  end  
  
 
  def self.all
    @@all
  end
  
  def songs
    song.select do |song|
     song.Artist == self
   end
  end 
  
  
end