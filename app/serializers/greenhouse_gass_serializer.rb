class GreenhouseGassSerializer < ActiveModel::Serializer
  attributes :product, :land_use_change, :packaging, :animal_feed, :farm, :processing, :transport, :retail
  has_many :ingredients
end
