class CuisinesController < ApplicationController
  def index
    @cuisines = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new
    @cuisine.name = params[:name]

    if @cuisine.save
      redirect_to "/cuisines", :notice => "Cuisine created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cuisine = Cuisine.find(params[:id])
  end

  def update
    @cuisine = Cuisine.find(params[:id])

    @cuisine.name = params[:name]

    if @cuisine.save
      redirect_to "/cuisines", :notice => "Cuisine updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @cuisine = Cuisine.find(params[:id])

    @cuisine.destroy

    redirect_to "/cuisines", :notice => "Cuisine deleted."
  end
end
