class Tip < ApplicationRecord
  belongs_to: :tippee
  validates :amount, :processed, :tippee, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0, less_than: 1000000 }
end
