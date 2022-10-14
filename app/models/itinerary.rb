class Itinerary < ApplicationRecord
  validates :location, presence: true, length: { minimum: 3, maximum: 50}
  validates :detail, presence: true, length: { minimum: 10, maximum: 2000 }
end
