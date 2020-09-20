class Sacartists::Career
  attr_accessor :name, :artists
  
  @@all = [] 
  
  def initialize(name)
    @name= name
    @artists= []
    @@all << self 
  end
  
  def self.all 
    Sacartists::Scraper.scrape_careers if @@all.empty?
    @@all
  end
  
  def get_artists
    Sacartists::Scraper.scrape_artists(self) if @artists.empty? && Sacartists::Artist.career(self)
  end
  
end