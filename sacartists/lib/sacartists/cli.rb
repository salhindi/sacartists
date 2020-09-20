require 'pry'
class Sacartists::CLI
    attr_accessor :careers
    
  def call 
    puts 'Welcome to the Sacramento Artists app!'
    get_career_options
    list_careers
    get_career_choice
  end
  
  def get_career_options
    @careers = ["art", "drawing", "painting", "writing"] 
  end
  
  def list_careers
     @careers.each_with_index do |c, i|
       puts "#{i +1}.#{c}"
     end
   end
     
    def get_career_choice
      chosen_career = gets.strip.to_i
      show_artists_for(chosen_career) if valid_input(chosen_career, @careers)
    end
    
    def valid_input(input, data)
      input.to_i <= data.length && input.to_i > 0 
    end
    
    def show_artists_for(chosen_career)
      career = @careers[chosen_career]
      puts "Here are artists for #{career}"
      # Sacartists::Artist.all.each{|artist| puts artist.name}
      #get_career_choice
    # binding.pry
    end
  
    
end
