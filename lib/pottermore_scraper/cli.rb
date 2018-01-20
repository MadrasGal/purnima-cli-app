#CLI Controller 

class PottermoreScraper::CLI

  def call 
    puts "\n Nitwit! Blubber! Oddment! Tweak! Welcome to Pottermore!"
    list_menu
  end

  def list_menu
    puts "\n"
    puts "1. Search by name/character"
    puts "2. Daily Prophet - News!"
    puts "3. Sorting Hat"
    puts "4. Diagon Alley - Shop!"
    puts "\n"

    input = gets.chomp 
  end 


end