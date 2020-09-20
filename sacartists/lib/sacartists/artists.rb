class Sacartists::Artists
  attr_accessor :name, :career
  
  @@all =[]
  
  def initialize(name, career)
    @name= name
    @career=career
    @@all << self
  end
  
  def self.all
    @@all
  end
end