class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :greenhouse_gass, :water_use, :eutrophication
  belongs_to :greenhouse_gass
  belongs_to :water_use
  belongs_to :eutrophication
end
