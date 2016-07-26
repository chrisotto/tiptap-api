class TippeeSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :photo_url, :payment_url

  has_many :beacons
  has_many :tips
end
