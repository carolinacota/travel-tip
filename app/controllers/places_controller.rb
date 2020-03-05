class PlacesController < ApplicationController
before_action :set_place, only: [:show]
skip_before_action :authenticate_user!, only: [:show]
# has_many :tips

def show
  @city = City.find_by name: params[:city_name]
  @list = List.where(user: current_user, city: @city).first
  @list = List.new if @list.nil?
  authorize @place
end

private

def place_params
  params.require(:place).permit(:name)
end

def set_place
  @place = Place.find_by(slug: params[:name])
end


end
