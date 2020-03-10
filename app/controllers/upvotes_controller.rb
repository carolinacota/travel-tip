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

        respond_to do |format|
          format.html { redirect_to request.referer }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      elsif @vote.action.nil?
        @tip.upvote!
        @vote.update(action: "upvote")

        respond_to do |format|
          format.html { redirect_to request.referer }
          format.js  # <-- idem
        end
      end
    end
  end
end
