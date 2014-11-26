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
end
