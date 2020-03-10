class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following

  validates :username, presence: true, uniqueness: true,
            format: {
                        with: /\A[A-Za-z0-9]+(?:[_-][A-Za-z0-9]+)*\Z/
                      }

  has_many :lists

  has_many :tips, dependent: :destroy

  def get_wishlist(city)
    lists.find{ |list| list.city == city  && list.is_wishlist == true }
  end

  def to_param
    username
  end

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship
  end

  def not_wishlists
    lists.where(is_wishlist: false)
  end

  def number_of_followers
    followers.count
  end
end
