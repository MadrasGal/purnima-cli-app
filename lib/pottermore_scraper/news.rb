

class News

    attr_accessor :title, :date, :url, :content 

    @@news = [] #stores all instances of this class with attributes (title, date, url, content)
    
    def self.items
        self.destroy_all 
        self.scraper 
    end

    def self.scraper
        News_scraper.scrape_news
        @@news

     end

    
    def self.create_news_item(news_title, news_date, news_url, news_content)
        news_item = self.new
        news_item.title = news_title 
        news_item.date = news_date  
        news_item.url = news_url 
        news_item.content = news_content

        #Instance saved in @@news
        news_item.save
        news_item
    end

    def save  
        @@news << self 
    end 


    def self.all 
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
