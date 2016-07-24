class TipSerializer < ActiveModel::Serializer
  attributes :id, :amount, :processed

  belongs_to :tippee_id
end
