class Listplace < ApplicationRecord
  belongs_to :list
  belongs_to :place
  has_many :tips, through: :places
end
