class CLI 
  
  def run 
    Scraper.scrape_presidents
    print_presidents

  end
  
  def print_presidents
    President.all.each.with_index(1) do |president, index|
      puts "#{index}. #{president.name}"
    end
  end
  
end