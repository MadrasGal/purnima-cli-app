#CLI Controller 

class PottermoreScraper::CLI

  def call 
    puts "\n Nitwit! Blubber! Oddment! Tweak! Welcome to Pottermore!"
    list_menu
    
  end

  #list menu options"

  def list_menu
    puts "\nMain Menu \n"
    puts "1. Daily Prophet - News!"
    puts "2. Diagon Alley - Shop!"
    puts "3. Evanesco - Exit"
    puts "\n"
    puts "To know more, say -- 'Accio' for option 1 or 'Alohomora' for option 2 or 'Exit'\n"
    user_input 
  end
  
  #gets user_input to proceed

  def user_input  

    # to_do refine menu options
    # insert check for integer 
    # option to view menu again
    # exit message 

    input = gets.strip.downcase

      case input
          when "accio", "dailyprophet", "1"
            puts "option 1"
          when "alohomora", "diagonalley", "2"
            puts "option 2"
          when "evanesco","exit","3"
            return 
          else
            puts "\n Didn't catch the non-wizard lingo. Here are the menu options, try again. \n"
            list_menu    
        end 
  end 

end #end class