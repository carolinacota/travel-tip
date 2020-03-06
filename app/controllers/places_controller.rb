class PlacesController < ApplicationController
before_action :set_place, only: [:show]
skip_before_action :authenticate_user!, only: [:show]

def show
  authorize @place
end

private

def place_params
  params.require(:place).permit(:name, :food_list, :sight_list, :entertainment_list)
end

def set_place
  @place = Place.find_by(slug: params[:name])
end


end
