class TipSerializer < ActiveModel::Serializer
  attributes :id, :amount, :processed, :tippee_id
end
