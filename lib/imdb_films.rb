# frozen_string_literal: true

require_relative "imdb_films/version"
require_relative "imdb_films/cli.rb"
require_relative "./imdb_films/film"
require_relative "./imdb_films/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'


module ImdbFilms
  class Error < StandardError; end
  # Your code goes here...
end
