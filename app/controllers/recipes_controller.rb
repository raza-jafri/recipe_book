require 'open-uri'
require 'json'

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    @recipe.cuisine_id = params[:cuisine_id]
    @recipe.recipe_name = params[:recipe_name]
    @recipe.image_url = params[:image_url]
    @recipe.time_to_prepare = params[:time_to_prepare]
    @recipe.time_to_cook = params[:time_to_cook]

    if @recipe.save
      redirect_to "/recipes", :notice => "Recipe created successfully."
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.cuisine_id = params[:cuisine_id]
    @recipe.recipe_name = params[:recipe_name]
    @recipe.image_url = params[:image_url]
    @recipe.time_to_prepare = params[:time_to_prepare]
    @recipe.time_to_cook = params[:time_to_cook]

    if @recipe.save
      redirect_to "/recipes", :notice => "Recipe updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])

    @recipe.destroy

    redirect_to "/recipes", :notice => "Recipe deleted."
  end

  def search
    @ingredient_1 = params[:a]
    @ingredient_2 = params[:b]

    ing_1 = URI.encode(@ingredient_1)
    ing_2 = URI.encode(@ingredient_2)

    url = "http://api.yummly.com/v1/api/recipes?_app_id=03dad7a0&_app_key=0e386e167b90fc69b5956a4bd1ab0a6d&q=#{ing_1}+#{ing_2}"
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    @matches = parsed_data["matches"]
    @number_of_matches = @matches.length

    @first = @matches[0]
    @recipe = @first["recipeName"]
    @time_to_cook = @first["totalTimeInSeconds"]
    @big_picture = @first["imageUrlsBySize"][0]
    @small_picture = @first["smallImageUrls"][0]
    @rating = @first["rating"]
    @total_ingredients = @first["ingredients"]
    @attributes = @first["attributes"]

    render 'index'

  end





end
