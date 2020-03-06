class FollowsController < ApplicationController
  before_action :set_user

  def create
    current_user.follow(@user.id)
    redirect_to profile_path
  end

  def destroy
    current_user.unfollow(@user.id)
    redirect_to profile_path
  end

  private

  def set_user
    @user = User.find_by(username: params[:username])
    skip_authorization
  end
end
