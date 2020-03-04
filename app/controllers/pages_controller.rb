class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @cities = City.pluck(:name).sort
  end
end
