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
    puts "Enter a film by index number to learn more about it!"
    gets_film_input
    end 

def gets_film_input
    film_input = gets.strip.to_i
    film = ImdbFilms::Film.find(film_input - 1)
    if film_input < 1 || film == nil 
    error 
    else 
    print_film(film)
    end 
end 

def error 
puts "A film doesn't exist with that index number, would you like to try another?"
gets_input
end 

def print_film(film)
    puts "#{film.title.upcase}"
    puts "----------------------------"
    puts "Ranking:#{film.rank}".delete('.').delete(' 
').insert(8, ' ')
    puts "Year Made: #{film.year}".delete('()')
    puts "Director and Actors: #{film.people}" 
    puts "Rating: #{film.rating}".delete(' 
').insert(7, ' ')
    puts "Url: #{film.url}"
    puts "Plot: #{film.plot}"
    puts "Would you like to learn about another film?"
    gets_input 
end 


end 
