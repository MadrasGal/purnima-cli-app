require 'nokogiri'
require 'open-uri'

class News

    attr_accessor :title, :date, :url, :content 

    @@news = [] #stores all instances of this class with attributes (title, date, url, content)
    
    def self.items
        self.destroy_all 
        self.scraper 
    end

    def self.scraper
        
        self.scrape_news
        @@news

     end

    def self.scrape_news

            doc = Nokogiri::HTML(open("https://www.pottermore.com/news"))
             
            news_item = doc.search("div.hub-item__content")

          
            news_item.take(10).each do |news_doc|
                
                #div.hub-item__content.h2.hub-item__title
                news_title = news_doc.search("h2.hub-item__title").text.strip
                
                news_date = news_doc.search("time.hub-item__date.News").text.strip

                element = doc.at_css('div.hub-item a[href]')
               
                news_url = element['href'] 
                             
                news = self.create_news_item(news_title, news_date, news_url)
               

                news.save
                news
                      
            end        
    end

    def self.create_news_item(news_title, news_date, news_url)
        news_item = self.new
        news_item.title = news_title 
        news_item.date = news_date  
        news_item.url = news_url 

        news_item

    end

    def save  #saves instances to news array
        @@news << self 
    end 


    def self.all #returns news array
        @@news

    end

    def self.valid_number?(num)
        num.to_i > 0 && num.to_i <= News.all.size
    end

    def self.find_by_id(index)
        self.all[index.to_i-1]
    end

    def self.destroy_all
        @@news.clear
    end 
end 
