class Sacartists::Artist
  attr_accessor :name, :career
  
  # career has many artists 
  # artists belong to some careers
  
  @@all =[]
  
  def initialize(name, career)
    @name= name
    @career = career
    add_to_career
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.career(career)
    @@all.select{|artist| artist.career == artist}
  
  def add_to_career
    @career.artists << self unless @career.artists.include?(self)
  end
 
end