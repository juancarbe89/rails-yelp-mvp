class Restaurant < ApplicationRecord
  # When a restaurant is destroyed, all of its reviews should be destroyed.
  has_many :reviews, dependent: :destroy
  # A restaurant must have at least a name, an address and a category.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  # The restaurant category should belong to a fixed list
  validates :category, :inclusion => { :in => ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
