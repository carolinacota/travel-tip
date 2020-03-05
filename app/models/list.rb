class List < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :listplaces, dependent: :destroy
  has_many :places, through: :listplaces
  has_many :tips, through: :places

  def self.find_or_create_list(user, city, should_be_wishlist)
    list = user.lists.find { |list| list.city == city && list.is_wishlist == should_be_wishlist }
    list = List.create(user: user, city: city, is_wishlist: should_be_wishlist) if !list
    list
  end
end
