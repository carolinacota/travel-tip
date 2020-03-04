class ListsController < ApplicationController
  before_action :set_list_and_user, only: :show
  before_action :set_city, only: :show

  def show
    authorize @list
  end

  def set_list_and_user
    @list = List.find(params[:id])
    @user = @list.user
  end

  def set_city
    @city = City.find_by(name: params[:city_name])
  end
end