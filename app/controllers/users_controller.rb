class UsersController < ApplicationController
  def show
    @user = User.find_by username: params[:username]
    authorize @user
    @lists = List.where(user: @user)
  end
end
