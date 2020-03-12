class ListplacesController < ApplicationController
  before_action :set_city
  before_action :set_place

  def create
    should_be_wishlist = @place.tips.none? { |tip| tip.user == current_user }
    @list = List.find_or_create_list(current_user, @city, should_be_wishlist)
    @list_place = Listplace.new(place: @place, list: @list)
    authorize @list_place
    if @list_place.save
      flash[:notice] = "Place succesfully added to your wishlist"
    else
      flash[:notice] = "This place is already in your list"
    end
    redirect_to city_path(@city)
  end

  private

  def set_city
    @city = City.find_by(slug: params[:city_name])
  end

  def set_place
    @place = Place.find_by(slug: params[:place_slug])
  end
end

