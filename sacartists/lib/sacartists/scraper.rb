class Sacartists::Scraper
  def self.scrape_careers
    doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?view&onepage=1&type"))
    careers = doc.css("select#artist-type-select option")
    

    
    careers.each do |c|
      name = c.text
      Sacartists::Careers.new(name)
    end
  
    end
end
