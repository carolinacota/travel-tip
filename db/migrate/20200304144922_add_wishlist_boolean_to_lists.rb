class AddWishlistBooleanToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :is_wishlist, :boolean, default: true
  end
end
