class AddActionToVotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :votes, :upvote
    remove_column :votes, :downvote
    add_column :votes, :action, :string
  end
end
