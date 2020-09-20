class Sacartists::Careers
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name= name 
    @@all << self 
  end
  
  def self.all 
    Sacartists::Scraper.scrape_careers if @@all.empty?
    @@all
  end
  
end