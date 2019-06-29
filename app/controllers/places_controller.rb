class PlacesController < ApplicationController

  include Pagy::Backend
  def index
    @pagy, @places = pagy(Place.all)
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
