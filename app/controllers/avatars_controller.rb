class AvatarsController < ApplicationController
  def update
    skip_authorization
    current_user.update(avatar_filter: params[:filter])
    head :no_content
  end
end
