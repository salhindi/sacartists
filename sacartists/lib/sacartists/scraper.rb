class Sacartists::Scraper
  def self.scrape_careers
    doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?view&onepage=1&type"))
    careers = doc.css("select#artist-type-select option")

    careers.each do |c|
      name = c.text
      Sacartists::Career.new(name)
    end
    end
    
    def self.scrape_artists(career)
      Sacartists::Artist.new("Jaren Fifield", career)
    end
    
end
