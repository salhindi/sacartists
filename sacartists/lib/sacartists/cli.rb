require 'pry'
class Sacartists::CLI
    attr_accessor :name
    
   def call 
      puts 'Welcome to the Sacramento Artists app!'
      @input = ""
      
      until @input == "exit" 
      get_career_options
      list_careers
      get_career_choice
      # puts "Type in the number of the talent you're looking for.
      
      # puts "To leave the app, type-in 'exit'"
    end
    goodbye
  end
  
  
  # def menu
  #   puts "What type of artist would you like listed?"
  #   puts "Type in the number associated with the career."
  #   get_career_choice

    
  #   input=gets.strip.to_i
    
  #   show_artists_for(input)
    
  #   puts "Type in the name of the artist you'd like to learn more about!"
    
    
  #   if input == "exit"
  #       puts "Goodbye!"
  #     end
  # end
  
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
      career.artists.each_with_index{|i, artist|
       puts "#{i + 1}. #{artist.name}"} 
     end
     get_artist_career(artist)
   end
   
   def get_artist_career(artist)
     puts "Choose an artist to learn more about them."
     input = gets.strip
     artist = career.artists[input.to_i - 1]
     
end
