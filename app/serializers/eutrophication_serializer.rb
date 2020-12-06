class EutrophicationSerializer < ActiveModel::Serializer
  attributes :product, :eutrophication
  has_many :ingredients
end
