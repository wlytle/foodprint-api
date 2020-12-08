class RecipeIngredientsController < ApplicationController
  before_action :get_recipe_ingredient, only: [:show, :match_types, :update, :destroy]

  def show
    render json: @recipe_ingredient
  end

  def match_types
    @recipe_ingredient.ingredient_type == "null" ? ingredients = @recipe_ingredient :
      ingredients = @recipe_ingredient.ingredient_type.ingredients.uniq
    render json: ingredients
  end

  def update
    ingredient = Ingredient.find(params[:new_ingredient])
    @recipe_ingredient.update(ingredient: ingredient)
    @recipe_ingredient.make_whole_line
    render json: @recipe_ingredient.recipe, serializer: DetailedRecipeSerializer
  end

  def destroy
    @recipe_ingredient.destroy
  end

  private

  def get_recipe_ingredient
    @recipe_ingredient = RecipeIngredient.find(params[:id])
  end
end
