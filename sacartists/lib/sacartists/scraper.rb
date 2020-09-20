class Sacartists::Scraper
  
    def self.scrape_careers
   doc = Nokogiri::HTML(open("https://www.sacramento365.com/artist/?view&onepage=1&type"))
     careers = doc.css("select#artist-type-select option")

      careers.each do |c|
        name = c.text
        id = c.attr("value")
      Sacartists::Career.new(name, id)
      end
    end
    
    def self.scrape_artists(career)
      url = "https://www.sacramento365.com/artist/?keyword&term=#{career.id}&city=0&zip=0&onepage=1&view=list"
      doc = Nokogiri::HTML(open(url))
    artists = doc.css(".search-info")
    artists.each do |a|
        career = a.css(".career").text
        name = a.css(".ev-tt").text
        Sacartists::Artist.new(name, career)
      end
    end
    
  end
    
