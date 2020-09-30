class Sacartists::Career
  attr_accessor :name, :artists, :id
  
  @@all = [] 
  
  def initialize(name, id)
    @name= name
    @id = id
    @artists= []
    @@all << self 
  end
  
  def self.all 
    Sacartists::Scraper.scrape_careers if @@all.empty?
    @@all
  end
  
  def list_artists
     Sacartists::Scraper.scrape_artists(self) if @artists.empty?
  end
  
  def self.find_by_name(name)
    @@all.find{|career| career.name == name}
  end
   
end