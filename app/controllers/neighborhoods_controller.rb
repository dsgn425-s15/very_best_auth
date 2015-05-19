class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.new
    @neighborhood.name = params[:name]
    @neighborhood.city = params[:city]

    if @neighborhood.save
      redirect_to "/neighborhoods", :notice => "Neighborhood created successfully."
    else
      render 'new'
    end
  end

  def edit
    @neighborhood = Neighborhood.find(params[:id])
  end

  def update
    @neighborhood = Neighborhood.find(params[:id])

    @neighborhood.name = params[:name]
    @neighborhood.city = params[:city]

    if @neighborhood.save
      redirect_to "/neighborhoods", :notice => "Neighborhood updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:id])

    @neighborhood.destroy

    redirect_to "/neighborhoods", :notice => "Neighborhood deleted."
  end
end
