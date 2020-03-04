class AutocompletesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    term = params[:query]
    fetch_places = params[:places] || false
    results = AutocompleteSearchService.new(term, fetch_places).call
    render json: results
    skip_authorization
  end
end
