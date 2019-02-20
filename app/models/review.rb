class Review < ApplicationRecord
  # A review must have a parent restaurant.
  belongs_to :restaurant
  validates :restaurant, presence: true
  # A review must have content and a rating. Rating should be between 0 and 5.
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: true
end
