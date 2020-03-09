class RemoveRatingAndAddUpvoteAndDownvoteToTips < ActiveRecord::Migration[5.2]
  def change
    remove_column :tips, :rating
    add_column :tips, :upvote, :integer, default: 0
    add_column :tips, :downvote, :integer, default: 0
  end
end
