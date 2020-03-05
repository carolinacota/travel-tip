class ListplacesController < ApplicationController
  before_action :set_city
  before_action :set_place

  def create
    @list = current_user.lists.find{ |list| list.city == @city && list.is_wishlist}
    @list = List.create(user: current_user, city: @city, is_wishlist: true) if !@list
    @list_place = Listplace.new(place: @place, list: @list)
    authorize @list_place
    if @list_place.save
      flash[:notice] = "Place succesfully added to your wishlist"
    else
      p @list_place.errors
      flash[:notice] = "This place is already in your list"
    end
    redirect_to city_path(@city)
  end

  private

  def set_city
    @city = City.find_by(name: params[:city_name])
  end

  def set_place
    @place = Place.find_by(slug: params[:place_name])
  end
end

