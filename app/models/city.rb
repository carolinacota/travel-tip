class City < ApplicationRecord
  after_validation :set_slug, on: %i[create update]
  has_many :places

  def to_param
    slug
  end

  private

    def set_slug
      self.slug = to_slug(name) if name.present?
    end
end