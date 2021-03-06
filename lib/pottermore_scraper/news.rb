

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

    def initialize (news_title, news_date, news_url, news_content)
        @title = news_title 
        @date = news_date  
        @url = news_url 
        @content = news_content

        save

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
