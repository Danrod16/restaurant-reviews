class Restaurant < ApplicationRecord
  RATING = [1, 2 ,3, 4, 5]
  validates :name, presence: true
  has_many :reviews, dependent: :destroy
end
