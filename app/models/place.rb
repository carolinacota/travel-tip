class Place < ApplicationRecord
  after_validation :set_slug, on: %i[create update]

  FOODS = ['brunch', 'burgers', 'views', 'cocktails', 'wine', 'steak'].freeze
  SIGHTS = ['museum', 'culture', 'historical', 'touristy', 'parks'].freeze
  ENTERTAINMENTS = ['family-friendly', 'music', 'dancing', 'theatre', 'movies', 'sports'].freeze

  belongs_to :city
  belongs_to :category
  has_many :tips
  has_many :listplaces
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

  private

    def set_slug
      self.slug = to_slug(name) if name.present?
    end
end
