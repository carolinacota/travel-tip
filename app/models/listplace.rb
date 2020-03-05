class Listplace < ApplicationRecord
  belongs_to :list
  belongs_to :place
  has_many :tips, through: :places

  validates :list_id, uniqueness: { scope: :place_id }
end
