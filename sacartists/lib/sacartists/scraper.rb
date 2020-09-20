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
       doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?view&onepage=1&type"))
       artist = doc.css(".search-info").each do |artist|
      artist.career = artist.css(".career").text
      artist.name = artist..css(".ev-tt").text
      end
    end
    end
  end
    
