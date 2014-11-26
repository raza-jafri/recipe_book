class CuisineTypesController < ApplicationController
  def index
    @cuisine_types = CuisineType.all
  end

  def show
    @cuisine_type = CuisineType.find(params[:id])
  end

  def new
    @cuisine_type = CuisineType.new
  end

  def create
    @cuisine_type = CuisineType.new
    @cuisine_type.name = params[:name]

    if @cuisine_type.save
      redirect_to "/cuisine_types", :notice => "Cuisine type created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cuisine_type = CuisineType.find(params[:id])
  end

  def update
    @cuisine_type = CuisineType.find(params[:id])

    @cuisine_type.name = params[:name]

    if @cuisine_type.save
      redirect_to "/cuisine_types", :notice => "Cuisine type updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @cuisine_type = CuisineType.find(params[:id])

    @cuisine_type.destroy

    redirect_to "/cuisine_types", :notice => "Cuisine type deleted."
  end
end
