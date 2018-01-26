class PottermoreScraper::News

  attr_accessor :title, :date, :author, :url 

  def self.items

    #return instances of news items 

    puts "HEllo World"

    news1 = self.new
    news1.title = "Title 1"
    news1.date = "2018-01-01"
    news1.author = "Pottermore Team"
    news1.url = "https://www.pottermore.com/news/new-expanded-fantastic-beasts-and-where-to-find-them-vr-experience-announced"
  

    news2 = self.new
    news2.title = "Title 2"
    news2.date = "2018-01-01"
    news2.author = "Pottermore Team"
    news2.url = "https://www.pottermore.com/news/new-expanded-fantastic-beasts-and-where-to-find-them-vr-experience-announced"

    [news1, news2]  

    
  end


end 