class WaterUseSerializer < ActiveModel::Serializer
  attributes :product, :use
  has_many :ingredients
end
