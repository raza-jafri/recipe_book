require 'open-uri'
require 'json'

class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    @recipe.user_id = params[:user_id]
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
    @ingredient = params[:ingredients]

    ing = URI.encode(@ingredient)

    url = "http://api.yummly.com/v1/api/recipes?_app_id=03dad7a0&_app_key=0e386e167b90fc69b5956a4bd1ab0a6d&q=#{ing}"
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    @matches = parsed_data["matches"]
    @number_of_matches = @matches.length

    render 'search'

  end


before_action :authenticate_user!, :except => [:search]


end
