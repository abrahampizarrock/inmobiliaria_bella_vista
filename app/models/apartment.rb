class Apartment < ApplicationRecord
  belongs_to :Building
  has_many :services
end
