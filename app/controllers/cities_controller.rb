class CitiesController < ApplicationController
before_action :set_city, only: [:show]
skip_before_action :authenticate_user!, only: [:show]

  def show
    @list = List.where(user: current_user, city: @city).first
    @list = List.new if @list.nil?
    authorize @city

    @markers = @city.places.map do |place|

      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "places/info_window", locals: { place: place })
      }
    end
  end

  private

  def city_params
    params.require(:city).permit(:slug, :name)
  end

   def set_city
    @city = City.find_by name: params[:name]
  end
end
