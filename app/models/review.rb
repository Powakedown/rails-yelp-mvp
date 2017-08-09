class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5), allow_nil: false }, :numericality => {:only_integer => true}
  validates :restaurant_id, presence: true

end

  # has a content (FAILED - 5)
  # has a rating (stored as integer) (FAILED - 6)
  # content cannot be blank (FAILED - 7)
  # rating cannot be blank (FAILED - 8)
  # parent restaurant cannot be nil (FAILED - 9)
  # rating should be an integer (FAILED - 10)
  # rating should be a number between 0 and 5 (FAILED - 11)
