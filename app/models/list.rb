class List < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :listplaces
  has_many :places, through: :listplaces
  has_many :tips, through: :places
end
