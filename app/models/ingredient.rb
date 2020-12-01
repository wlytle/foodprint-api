class Ingredient < ApplicationRecord
  belongs_to :greenhouse_gas
  belongs_to :water_use
  belongs_to :eutrophication
end
