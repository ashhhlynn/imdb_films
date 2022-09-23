class ImdbFilms::Film 

@@all = []
attr_accessor :title, :people, :rank, :year, :rating, :url, :plot

def initialize(title, people, rank, year, rating, url)
    @title = title 
    @people = people
    @rank = rank
    @year = year
    @rating = rating
    @url = url 
    @@all << self
  end 
  

end 