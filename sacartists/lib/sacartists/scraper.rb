class Sacartists::Scraper
  def self.scrape_careers
    doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?view&onepage=1&type"))
    careers = doc.css("div.select-bkl option").text.split[6,89]
    
    careers.delete("/")
    
    careers.delete("&")
    
    careers.each do |c|
      name = c
      Sacartists::Careers.new(name)
    end
  
    end
end
