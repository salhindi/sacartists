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
    @careers = ["art", "drawing", "painting", "writing"] 
  end
  
  def list_careers
     @careers.each_with_index do |c, i|
       puts "#{i +1}.#{c}"
     end
   end
     
    def get_user_careers
      chosen_career = gets.strip
      binding.pry
      # if valid_input(chosen_career, @careers)
      #   puts "true"
    end
    
    def valid_input(input, data)
      input.to_i <= data.length && input.to_i > 0 
    end
  
    
end
