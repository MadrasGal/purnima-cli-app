#CLI Controller 

class PottermoreScraper::CLI

  def call 
    puts "\n Nitwit! Blubber! Oddment! Tweak! Welcome to Pottermore!"
    list_menu
    user_input  
  end

  #list menu options"

  def list_menu
    puts "\nMain Menu \n"
    puts "1. Daily Prophet - News!"
    #puts "2. Diagon Alley - Shop!"
    puts "2. Evanesco - Exit"
    puts "\n"

    @news = PottermoreScraper::News.items 

    #display list of news items 

    @news.each.with_index(1) do|news_item,index|
     puts "#{index}. #{news_item.title} - #{news_item.date}"
    binding.pry
    end

  end
  
  #gets user_input to proceed

  def user_input  

    # to_do refine menu options
    # insert check for integer 
    # option to view menu again
    # exit message 
    input = 'nil'
    while input != 'exit'
      puts "To know more, enter 1 for option 1 or 2 to Exit'\n"
      input = gets.strip.downcase

        case input
            when "accio", "dailyprophet", "1"
              puts "option 1"
              the_ news_item = @news[input.to_i-1]
              puts "#{index}. #{news_item.title} - #{news_item.date}"

            when "evanesco","exit","2"
              return 
            else
              puts "\n Didn't catch the non-wizard lingo. Try again. \n"
                 
          end 
    end #while loop end 
  end 

end #end class