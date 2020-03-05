class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update]

  def show
    authorize @user
    @lists = List.where(user: @user, is_wishlist: false)
    @wishlists = List.where(user: @user, is_wishlist: true)
  end

  def update
    authorize @user
    if @user.update(set_params)
      redirect_to user_path(@user)
    else
      render :show
    end
  end

  private

  def find_user
    @user = User.find_by username: params[:username]
  end

  def set_params
    params.require(:user).permit(:photo, :bio)
  end
end
