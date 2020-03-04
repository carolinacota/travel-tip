class CitiesController < ApplicationController
before_action :set_city, only: [:show]
skip_before_action :authenticate_user!, only: [:show]

  def show
    authorize @city
  end

  private

  def city_params
    params.require(:city).permit(:slug, :name)
  end

   def set_city
    @city = City.find_by name: params[:name]
  end
end
