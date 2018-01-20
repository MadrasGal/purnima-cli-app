#CLI Controller 

class PottermoreScraper::CLI

  def call 
    puts "\n Nitwit! Blubber! Oddment! Tweak! Welcome to Pottermore!"
    list_menu
    user_input
  end

  def list_menu
    #list menu options"
    puts "\n"
    puts "1. Search by name/character"
    puts "2. Daily Prophet - News!"
    puts "3. Sorting Hat"
    puts "4. Diagon Alley - Shop!"
    puts "5. Exit"
    puts "\n"

  end
  
  def user_input  
    puts "What would you like to do?"

      input = 0

      while input !="exit"

        input = gets.strip

        case input

          when "1"
            puts "option 1"
          when "2"
            puts "option 2"
          when "3"
            puts "option 3"
          when "4"
            puts "option 4"
          when "5"
            puts "option 5"
          else
            return 
        end
      end 
  end 

end