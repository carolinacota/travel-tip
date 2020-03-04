class PlacesController < ApplicationController

  def show
    @places = Place.geocoded #returns flats with coordinates

    @markers = @places.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
end
