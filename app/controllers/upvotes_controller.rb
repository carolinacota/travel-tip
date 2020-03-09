class UpvotesController < ApplicationController
  def create
    @tip = Tip.find(params[:tip_id])
    @vote = @tip.votes.find_or_create_by(user: current_user)
    authorize @vote

    ActiveRecord::Base.transaction do
      if @vote.downvote?
        @tip.downvote -= 1
        @tip.upvote += 1
        @tip.save(validate: false)
        @vote.update(action: "upvote")
      elsif @vote.action.nil?
        @tip.upvote!
        @vote.update(action: "upvote")
      end
    end
  end
end
