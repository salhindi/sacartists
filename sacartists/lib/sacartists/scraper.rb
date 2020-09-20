class Sacartists::Scraper
  
    def self.scrape_careers
   doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?view&onepage=1&type"))
     careers = doc.css("select#artist-type-select option")

      careers.each do |c|
        name = c.text
      Sacartists::Career.new(name)
      end
    end
    
    def scrape_artists
      doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?keyword&term=48795&city=0&zip=0&onepage=1&view=list"))
    
     doc.css(".search-info").each do |search|
         artist = Sacartists::Artist.new(name, career)
      artist.career = search.css(".career").text
      artist.name = search.css(".ev-tt").text
      end
    end
    
  end
    
