class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :place

  has_one_attached :photo
end
