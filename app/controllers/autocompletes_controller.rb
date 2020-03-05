class AutocompletesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    skip_authorization
    term = params[:query]
    results = AutocompleteSearchService.new(term).call
    render json: results
  end
end
