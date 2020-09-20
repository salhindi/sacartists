class Sacartists::Careers
  attr_accessor :name, :artist
  
  @@all = [] 
  
  def initialize(name)
    @name= name
    @artist= artist
    @@all << self 
  end
  
  def self.all 
    Sacartists::Scraper.scrape_careers if @@all.empty?
    @@all
  end
  
  def artists
    Sacartists::Scraper.scrape_artists(self) if @artists.empty?
    @artists 
  end
  
end