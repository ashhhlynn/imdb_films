class ImdbFilms::Scraper

    def self.scrape_films
    doc = Nokogiri::HTML(open("https://www.imdb.com/chart/top/"))
    results = doc.css('.titleColumn')
    results.each do |m|
        title = m.css('a').text
        people = m.css('a').attr("title")
        rank = m.children[0]
        year = m.css(".secondaryInfo").text
        rating = m.next_element.text   
        url = "https://www.imdb.com#{m.css("a").attr("href")}"
        ImdbFilms::Film.new(title, people, rank, year, rating, url)
        end 
    end 
    
end 
    
    