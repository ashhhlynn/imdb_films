class ImdbFilms::CLI

def call
    ImdbFilms::Scraper.scrape_films
    puts "Welcome to Imdb's top 250 films! Would you like to learn about a film?"
    gets_input 
end 

def gets_input
    puts "Enter any key for yes, or N to exit!"
    input = gets.strip 
    if input != "N"
        gets_films
        else 
        puts "Goodbye!"
        end 
    end 

def gets_films
    films = ImdbFilms::Film.all
    films.each.with_index(1) do |film, index| 
        puts "#{index}. #{film.title}"
        end 
    end 

end 