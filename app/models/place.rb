class Place < ApplicationRecord
  belongs_to :city
  belongs_to :category
end
