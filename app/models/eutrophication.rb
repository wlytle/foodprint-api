class Eutrophication < ApplicationRecord
  has_many :ingredients, dependent: :delete_all
end
