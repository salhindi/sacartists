require 'pry'
module SacArtists
  class CLI
  def call 
    puts 'Welcome to the Sacramento Artists app!'
    # binding.pry
    # get_artist
    # get_careers
    # get_artists_for(career)
    #  list artists 
    #  user chooses artist 
  end
  
  def get_career_options
    # scrape
    @careers = ["Art", "Administration", "Writing", "video"]
  end
  
  def get_user_career
    # list careers
    @careers.each_with_index{|i, c| "#{i + 1}"."#{c}"}
  end
    
end
end