class FoursquareServicesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    skip_authorization
    term = { query: params[:query], city: params[:city_name]}
    results = FoursquareService.places(term)
    render json: results
  end
end
