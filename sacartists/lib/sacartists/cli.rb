require 'pry'
class Sacartists::CLI
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
  end
  
  def list_careers
    puts "Choose the type of artist you're looking for!"
     @careers.each_with_index do |c, i|
       puts "#{i + 1}.#{c}"
     end
   end
     
     def get_user_careers
       chosen_career = gets.strip
     end
    
end
