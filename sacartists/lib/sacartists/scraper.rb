class Sacartists::Scraper
  
    def self.scrape_careers
   doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?view&onepage=1&type"))
     careers = doc.css("select#artist-type-select option")

      careers.each do |c|
        name = c.text
      Sacartists::Career.new(name)
      end
    end
    
    def get_page
      doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?keyword&term=48795&city=0&zip=0&onepage=1&view=list"))
    end
    
    def get_artists
      self.get_page.css(".search-info")
    end
  #       def get_careers
  #   Sacartists::Scraper.scrape_artists(career) if @artists.empty?
  # end
 
    
    def scrape_artists
       self.get_artists.each do |search|
         artist = Sacartists::Artist.new(name, career)
      artist.career = search.css(".career").text
      artist.name = search.css(".ev-tt").text
      end
    end
    
  end
    
