class Sacartists::Scraper
  def scrape_careers
    site = "https://www.sacramento365.com/artist/?view&onepage=1&type"
    page = Nokogiri::HTML(open(site))
    binding.pry 
  end
  
end
