class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :votes, dependent: :destroy

  has_many_attached :photos
  validates :photos, presence: true
  after_create :add_place_to_list

  def add_place_to_list
    list = List.find_or_create_list(user, place.city, false)
    wishlist = user.get_wishlist(place.city)
    if wishlist
      list_place = wishlist.listplaces.find{ |lp| lp.place == place}
      if list_place
        list_place.destroy
        wishlist.destroy if wishlist.listplaces.select{|lp| lp.id != list_place.id}.empty?
      end
    end
    Listplace.create(place: place, list: list)
  end

  def upvote!
    increment!(:upvote)
  end

  def downvote!
    increment!(:downvote)
  end
end
