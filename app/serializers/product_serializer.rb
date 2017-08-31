class ProductSerializer < ActiveModel::Serializer
  attributes :id, :number, :ean, :name, :collection, :program, :size, :colour, :price_chf, :price_eur
end
