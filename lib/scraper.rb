class Scraper 
  
  def self.scrape_presidents
    html = open("https://millercenter.org/president")
    doc = Nokogiri::HTML(html)
    
    doc.css("div.president-info").each do |i|
      president = President.new
      president.name = i.css("div.info-wrapper a")[0].text
      president.url = "https://millercenter.org" + i.css("div.info-wrapper a")[0].attribute("href").value
    end 
  end
  
  def self.scrape_single_president
    
  end
  
end