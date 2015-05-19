class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new
    @venue.address = params[:address]
    @venue.neighborhood_id = params[:neighborhood_id]

    if @venue.save
      redirect_to "/venues", :notice => "Venue created successfully."
    else
      render 'new'
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])

    @venue.address = params[:address]
    @venue.neighborhood_id = params[:neighborhood_id]

    if @venue.save
      redirect_to "/venues", :notice => "Venue updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @venue = Venue.find(params[:id])

    @venue.destroy

    redirect_to "/venues", :notice => "Venue deleted."
  end
end
