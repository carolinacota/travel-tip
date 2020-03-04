class TipsController < ApplicationController

def new
  @place = Place.find_by(slug: params[:place_name])
  @city = @place.city
  @tip = Tip.new
  authorize @tip
end

def create
  @tip = Tip.new(tip_params)
  @place = Place.find_by(slug: params[:place_name])
  @tip.place = @place
  @tip.user = current_user
  @tip.save
  binding.pry
  redirect_to city_place_path(@place.city, @place)
  authorize @tip
end

private

def tip_params
  params.require(:tip).permit(:content, :rating)
end

end