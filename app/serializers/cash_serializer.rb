class CashSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :value
end
