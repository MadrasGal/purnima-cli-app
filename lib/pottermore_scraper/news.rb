require 'nokogiri'
require 'open-uri'

class PottermoreScraper::News

    attr_accessor :title, :date, :url 

    def self.items #scrape pottermore.com and return news items 
        #PottermoreScraper::NewsScraper.new("https://pottermore.com")
        self.scrape_news
    end

    #return instances of news items 

    @news = []


    def self.save_news(news_item)
        @news << news_item 
        @news
    end 

    def self.scrape_news

        #return array of news items 

        doc = Nokogiri::HTML(open("https://www.pottermore.com/news"))


        news_item = self.new
        news_item.title = doc.search("h2.hub-item--featured__title").text.strip
        news_item.date = doc.search("time.hub-item--featured__date.News").text.strip
    

        element = doc.at_css('div.hub-item--featured a[href]')
        news_item.url = element['href']               
        
        self.save_news(self)
    end
end 
