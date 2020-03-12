class Place < ApplicationRecord
  after_validation :set_slug, on: %i[create update]
  has_one_attached :photo

  FOODS = ['brunch', 'best value', 'veggie', 'cocktails', 'wine', 'local', 'happy hour'].freeze
  SIGHTS = ['museum', 'historical', 'touristy', 'parks', 'sunset'].freeze
  ENTERTAINMENTS = ['family-friendly', 'music', 'dancing', 'theatre', 'sports', 'rooftops'].freeze

  belongs_to :city
  belongs_to :category
  has_many :tips, dependent: :destroy
  has_many :listplaces, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  acts_as_taggable_on :foods
  acts_as_taggable_on :sights
  acts_as_taggable_on :entertainments



  def to_param
    slug
  end

  def get_user_tips(user)
    tips.select{ |t| t.user == user }
  end

  private

    def set_slug
      self.slug = to_slug(name) if name.present?
    end
end
