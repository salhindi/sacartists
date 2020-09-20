require 'pry'
class Sacartists::CLI
    
   def call 
      puts 'Welcome to the Sacramento Artists app!'
      @input = ""
      until @input == "exit" 
      get_career_options
      list_careers
      get_career_choice
      new_search
    end
    good_bye
  end
  
 
    def get_career_options
      @careers = Sacartists::Career.all
    end
  
    def list_careers
      puts "What talent are you looking for?"
      @careers.each_with_index do |c, i|
      puts "#{i +1}.#{c.name}"
    end
     
    def get_career_choice
      chosen_career = gets.strip.to_i
      show_artists_for(chosen_career) if valid_input(chosen_career, @careers)
    end
  end
    
    def valid_input(input, data)
      input.to_i <= data.length && input.to_i > 0 
    end
    
    def show_artists_for(chosen_career)
      # binding.pry
      career = @careers[chosen_career -1]
      career.list_artists
      # career.get_artists.each {|artist| artist.career == career} 
      puts "Here is a list of artists that are #{career.name}."
      career.artists.each_with_index{|artist, i|
       puts "#{i +1}. #{artist.name}"} 
     end
   
   
  # def get_artist_info(artist)
  #   puts "Choose an artist to learn more about them."
  #   input = gets.strip
  #   artist = career.artists[input.to_i - 1]
  # end
   
   def new_search
     puts "Would you like to see other types of artists? If not, type 'exit' to exit or hit any key to see more careers."
     @input = gets.strip
   end
   
   def good_bye
     puts "See ya later!"
   end
 end
 
     

