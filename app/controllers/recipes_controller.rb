require 'open-uri'
require 'json'

class RecipesController < ApplicationController
  def home
  end

  def index
    @ingredient_1 = params[:a]
    @ingredient_2 = params[:b]

    ing_1 = URI.encode(@ingredient_1)
    ing_2 = URI.encode(@ingredient_2)

    url = "http://api.yummly.com/v1/api/recipes?_app_id=03dad7a0&_app_key=0e386e167b90fc69b5956a4bd1ab0a6d&q=#{ing_1}+#{ing_2}"
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    @matches = parsed_data["matches"]
    @number_of_matches = @matches.length
    @first = @matches[rand(0..@number_of_matches.to_i)]

    @recipeName = @first["recipeName"]
    @time_to_cook = @first["totalTimeInSeconds"]
    @big_picture = @first["imageUrlsBySize"]
    @small_picture = @first["smallImageUrls"]
    @rating = @first["rating"]
    @total_ingredients = @first["ingredients"]
    @attributes = @first["attributes"]
  end

end
