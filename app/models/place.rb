class Place < ApplicationRecord
  after_validation :set_slug, on: %i[create update]

  belongs_to :city
  belongs_to :category
  has_many :tips
  has_many :listplaces
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def to_param
    slug
  end

  private

    def set_slug
      self.slug = to_slug(name) if name.present?
    end
end
