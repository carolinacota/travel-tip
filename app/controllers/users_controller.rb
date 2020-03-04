class UsersController < ApplicationController

  def show
    @user = User.find_by username: params[:username]
    authorize @user
    @lists = List.where(user: @user, is_wishlist: false)
    @wishlists = List.where(user: @user, is_wishlist: true)
  end
end
