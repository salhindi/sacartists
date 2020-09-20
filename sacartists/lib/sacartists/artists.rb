class Sacartists::Artists
  attr_accessor :name
  attr_writer :artists
  
  
  @@all =[]
  
  def initialize(name, career)
    @name= name
    @careers = []
    @@all << self
  end
  
  def self.all
    @@all
  end
 
end