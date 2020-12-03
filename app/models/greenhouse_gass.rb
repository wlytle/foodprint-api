class GreenhouseGass < ApplicationRecord
  has_many :ingredients, dependent: :delete_all
end
