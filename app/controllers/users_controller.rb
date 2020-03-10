class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @user = User.find_by(username: params[:username])
    authorize @user
    @lists = List.where(user: @user, is_wishlist: false)
    @wishlists = List.where(user: @user, is_wishlist: true)
    @picture = ""
    @tips = Tip.where(user: @user)
    @upvotes = count_upvotes(@tips)
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

  def count_upvotes(tips)
    upvote = 0
    tips.each do |tip|
      upvote += tip.upvote
    end
    upvote
  end
end
