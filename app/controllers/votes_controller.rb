class VotesController < ApplicationController

  def upvote
    @tip = Tip.find(params[:id])
    @vote = Vote.new(tip: @tip)
    @vote.user = current_user
    @vote.save
    # upvote += 1
    # now we save likes and dislikes in tips
    @tip.upvote += 1
  end

  def downvote
    @tip = Tip.find(params[:id])
    @vote = Vote.new(tip: @tip)
    @vote.user = current_user
    @vote.save
    # upvote += 1
    # now we save likes and dislikes in tips
    @tip.downvote += 1
  end
end
