class Tippee < ApplicationRecord
  has_many :beacons
  has_many :tips
  validates :first_name, :last_name, :payment_url, :beacons, presence: true
  validates :first_name, :last_name, length: { maximum: 35 }
end
