class Beacon < ApplicationRecord
  belongs_to: :tippee
  validates :tippee, presence: true
end
