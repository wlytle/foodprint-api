class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :ingredient_type
  #validates :quantity, :ingredient, presence: true

  def self.update_or_create_by(args, attributes)
    obj = self.find_or_create_by(args)
    obj.update(attributes)
    obj.make_whole_line
    self
  end

  def make_whole_line
    self.whole_line = "#{self.quantity} #{self.unit.pluralize(self.quantity)} of #{self.ingredient.name}"
    self.save
  end
end
