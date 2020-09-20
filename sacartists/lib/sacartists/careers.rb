class Sacartists::Careers
  
  @@all = ["Writers", "Painters", "Guitarists", "Drummers", "Sculptor"] 
  
  # def initialize(name)
  #   @name= name 
  #   @@all << self 
  # end
  
  def self.all 
    @@all
  end
  
end