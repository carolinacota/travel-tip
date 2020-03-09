class DownvotesController < ApplicationController
  def create
    @tip = Tip.find(params[:tip_id])
    @vote = @tip.votes.find_or_create_by(user: current_user)
    authorize @vote

    ActiveRecord::Base.transaction do
      if @vote.upvote?
        @tip.upvote -= 1
        @tip.downvote += 1
        @tip.save(validate: false)
        @vote.update(action: "downvote")
      elsif @vote.action.nil?
        @tip.downvote!
        @vote.update(action: "downvote")
      end
    end
  end
end
