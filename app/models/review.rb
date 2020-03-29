class Review < ApplicationRecord
  belongs_to :cocktail
  validates :title, presence: true
  validates :content, presence: true
  validates :rating, presence: true
end
