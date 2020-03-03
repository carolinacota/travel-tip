class List < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :places, through: :listplaces
end