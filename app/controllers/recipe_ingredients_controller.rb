class RecipeIngredientsController < ApplicationController
  before_action :get_recipe_ingredient, only: [:show, :destroy]

  def show
    render json: @recipe_ingredient
  end

  def destroy
    @recipe_ingredient.destroy
  end

  private

  def get_recipe_ingredient
    @recipe_ingredient = RecipeIngredient.find(params[:id])
  end
end
