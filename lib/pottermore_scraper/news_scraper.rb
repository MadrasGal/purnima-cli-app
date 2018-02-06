
# This class scrapes data from pottermore.com - title, date, url and news content 
class News_scraper

        #scraping for title, date, url 
    def self.scrape_news

        doc = Nokogiri::HTML(open("https://www.pottermore.com/news"))
         
        news_item = doc.search(".hub-item")

        news_item.take(10).each do |news_doc|
            
            news_title = news_doc.search("h2.hub-item__title").text.strip
            
            news_date = news_doc.search("time.hub-item__date.News").text.strip

            news_url = news_doc.search('a[href]').first.attributes['href'].value

            news_content = self.scrape_content(news_url)

            # return news 

            news = News.new(news_title, news_date, news_url, news_content)
            
            news   
        end        
    end


        #scraping for content 
    def self.scrape_content(news_url)
        
        full_url = URI.join('https://www.pottermore.com', news_url).to_s
        
        doc = Nokogiri::HTML(open(full_url))
                
        news_content = doc.search("div#news-body.news-story__content p").inner_text

        #return news_content
                 
        news_content  
    end

end 