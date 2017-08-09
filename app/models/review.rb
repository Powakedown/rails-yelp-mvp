class Review < ApplicationRecord
  RATINGS = (0..5)

  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATINGS, allow_nil: false }, :numericality => {:only_integer => true}
  validates :restaurant_id, presence: true

end
