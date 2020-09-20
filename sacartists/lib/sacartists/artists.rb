class Sacartists::Artists
  attr_accessor :name, :careers
  
  # career has many artists 
  # artists belong to some careers
  
  @@all =[]
  
  def initialize(name, career)
    @name= name
    @careers = careers
    @@all << self
  end
  
  def self.all
    @@all
  end
 
end