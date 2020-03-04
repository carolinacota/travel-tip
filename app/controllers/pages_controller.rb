class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :autocomplete]

  def home
    @cities = City.pluck(:name).sort
  end

  def autocomplete
    results = AutocompleteSearchService.new(params[:query]).call
    render json: results
    skip_authorization
  end
end
