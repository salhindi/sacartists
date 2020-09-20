class Sacartists::Artist
  attr_accessor :name, :career
  
  # career has many artists 
  # artists belong to some careers
  
  @@all =[]
  
  def initialize(name, career)
    @name= name
    @career = career
    @@all << self
  end
  
  def self.all
    @@all
  end
 
end