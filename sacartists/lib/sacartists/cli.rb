require 'pry'
class Sacartists::CLI
    attr_accessor :name
    
   def call 
      puts 'Welcome to the Sacramento Artists app!'
      get_career_options
      
      list_careers
      puts "Type in the number of the talent you're looking for."
      get_career_choice
      
      puts "To leave the app, type-in 'exit'"
    end
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
      career = @careers[chosen_career -1]
      career.get_artists 
      puts "Here is a list of artists that are #{career.name}."
      career.artists.each_with_index do |artist, i|
       puts "#{i +1}. #{artist.name}" 
     end
   end
 
