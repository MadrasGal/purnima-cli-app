#CLI Controller 

class PottermoreScraper::CLI

  def call 
    system("clear")
    puts "\n Nitwit! Blubber! Oddment! Tweak! Welcome to Pottermore!"
    list_menu
    user_input  
  end

  def list_menu
    puts "\nMain Menu \n"
    puts "1. Daily Prophet - News!"
    puts "2. Evanesco - Exit\n"
  end
  

  def user_input  
    input = 'nil'
    while input != 'exit'
      puts "\nTo see more, enter 'accio' or '1' for news, or '2' to Exit:\n"
      input = gets.strip.downcase

        case input
            when "accio", "dailyprophet", "1"  
              display_news
    
            when "evanesco","exit","2"
              puts "\nPip Pip, goodbye!"
              puts "\n"
              exit 
            else
              puts "\n Didn't catch the non-wizard lingo. Try again. \n"
              list_menu
          end 
    end #while loop end 
  end 


  def display_news
    puts "\n Daily Prophet News" 
    @news = PottermoreScraper::News.items 
    @news.each.with_index(1) do |news_item, index|
      puts "\n#{index}. #{news_item.title} - #{news_item.date}"
    end 
    user_input_news
  end

  def user_input_news

      #ask user for which news item they would like to view in more detail
      input = ' '

      puts "Enter the number of the article to read or go back to the main menu."
      input = gets.strip

      if News.valid_number?(input)
        news = News.find_by_id(input)

        puts "Title: #{news.title}"
        puts "Date: #{news.date}"
        puts "Body: #{news.body}"

        display_news
      else
        list_menu
      end

    end 

end #end class