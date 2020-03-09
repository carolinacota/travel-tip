class PlacesController < ApplicationController
before_action :set_place, only: [:show]
skip_before_action :authenticate_user!, only: [:show, :create]
# has_many :tips

def show
  @city = City.find_by name: params[:city_name]
  @list = List.where(user: current_user, city: @city).first
  @list = List.new if @list.nil?
  authorize @place

  @markers = [{
      lat: @place.latitude,
      lng: @place.longitude,
      infoWindow: render_to_string(partial: "places/info_window_place_show", locals: { place: @place })
    }]

end

def create

end

private

def place_params
  params.require(:place).permit(:name, :food_list, :sight_list, :entertainment_list)
end

def set_place
  @place = Place.find_by(slug: params[:slug])
end


end
