#CLI Controller 

class PottermoreScraper::CLI

  def call 
    system("clear")
    puts "\n Nitwit! Blubber! Oddment! Tweak! Welcome to Pottermore!"
    list_menu
    user_input  
  end

  #List Main Menu options and ask for user input - read news or exit program

  def list_menu
    puts "\nMain Menu"
    puts "1. Daily Prophet - News!"
    puts "2. Evanesco - Exit"
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
    end 
  end 

  # Display news articles and ask for user input - read individual news article or exit to main menu  

  def display_news
    system("clear")
    puts "\n Daily Prophet News"

    news= News.items
    puts "\n"
    
    news.each.with_index(1) do |news_item, index|
      puts "#{index}. #{news_item.title} - #{news_item.date}"
    end 

    #ask user for which news item they would like to view in more detail
    input = ' '

    puts "\nEnter the number of the article to read or type 'exit' to go back to the main menu."
    input = gets.strip

    if News.valid_number?(input)
      news_list = News.find_by_id(input)
      system("clear")
      puts "\nTitle: #{news_list.title}"
      puts "\nDate: #{news_list.date}"
      puts "\nContent: #{news_list.url}"
      else        
        list_menu
    end

  end 

end 