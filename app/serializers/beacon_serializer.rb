class BeaconSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :major, :minor

  belongs_to :tippee_id
end
