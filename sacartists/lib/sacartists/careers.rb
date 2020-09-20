class Sacartists::Careers
  attr_accessor :name 
  attr_writer :artists
  
  @@all = [] 
  
  def initialize(name)
    @name= name 
    @@all << self 
  end
  
  def self.all 
    Sacartists::Scraper.scrape_careers if @@all.empty?
    @@all
  end
  
  def artists
    Sacartists::Scraper.scrape_artists if @@all.empty?
    @artists 
  end
  
end