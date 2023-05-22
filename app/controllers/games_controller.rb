require 'json'
require 'open-uri'
# ["https://wagon-dictionary.herokuapp.com/:word","https://wagon-dictionary.herokuapp.com/autocomplete/:stem"]

class GamesController < ApplicationController
  def new
    # @letters = Array.new(10) { rand('a'..'z') }
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    @checked_word = URI.open(@url).read
    @word = JSON.parse(@checked_word)
    raise
  end

  # def url_creation
  # end

  # def word_validation
  #   if @word[:found] == true
  #     "The word is correct"
  #   elsif

  #   else

  #   end
  # end

  # def word_check
  #   @checked_word = URI.open(@url).read
  #   @word = JSON.parse(@checkWord)
  # end
end
