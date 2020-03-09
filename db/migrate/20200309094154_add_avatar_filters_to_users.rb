class AddAvatarFiltersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar_filter, :string
  end
end
