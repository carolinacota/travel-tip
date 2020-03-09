class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :tip

  validates :user, uniqueness: { scope: :tip, message: "has already voted this tip" }

  def upvote?
    action == "upvote"
  end

  def downvote?
     action == "downvote"
  end
end
