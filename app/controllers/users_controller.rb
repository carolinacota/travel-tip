class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @user = User.find_by(username: params[:username])
    authorize @user
    @lists = List.where(user: @user, is_wishlist: false)
    @wishlists = List.where(user: @user, is_wishlist: true)
    @picture = ""
  end

  def update
    @user = User.find_by(username: params[:username])
    authorize @user
    if @user.update(set_params)
      redirect_to profile_path(@user.username)
    else
      render :show
    end
  end

  private

  def set_params
    params.require(:user).permit(:photo, :bio)
  end
end
