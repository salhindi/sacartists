class Sacartists::Scraper
  
    def self.scrape_careers
   doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?view&onepage=1&type"))
     careers = doc.css("select#artist-type-select option")

      careers.each do |c|
        name = c.text
      Sacartists::Career.new(name)
      end
    end
    
    def scrape_artists(career)
      url = "https://www.sacramento365.com/artist/?keyword&term=#{careerid}&city=0&zip=0&onepage=1&view=list"
      doc = Nokogiri::HTML(open(url))
    artists = doc.css(".search-info")
    artists.each do |a|
        career = search.css(".career").text
        name = search.css(".ev-tt").text
      end
    end
    
  end
    
