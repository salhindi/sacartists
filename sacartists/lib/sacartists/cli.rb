require 'pry'
module SacArtists
  class CLI
    attr_accessor :careers
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
    @careers = ["art", "drawing", "painting", "writing"] 
  puts @careers
  end
  
  def get_user_career
  #   # list careers
     @careers.each do |c|
       puts "#{c}"
     end
      
     end
    
end
end