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


    def save_news
        @news << self.scrape_news 
        @news
    end 

    def self.scrape_news
        #Scrape pottermore.com/news to find news articles 
        #Extract properties
        #instantiate news_item
        #return array of news items 

        doc = Nokogiri::HTML(open("https://www.pottermore.com/news"))


        news_item = self.new
        news_item.title = doc.search("h2.hub-item--featured__title").text.strip
        news_item.date = doc.search("time.hub-item--featured__date.News").text.strip
         
        binding.pry

    end

    

end 
