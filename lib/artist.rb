require 'pry'

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
    Song.all.select do |song|
      song.artist == self 
    end
  end
  
  def new_song(name, genre)
    dope_song = Song.new(name, self, genre)
    dope_song
  end
  
  def genres 

  end
  
end