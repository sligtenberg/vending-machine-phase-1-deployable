class SnackSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :price
end
