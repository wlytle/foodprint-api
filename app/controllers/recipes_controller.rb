class RecipesController < ApplicationController
  before_action :get_recipe, only: [:show, :update]

  def index
    recipes = Recipe.all
    render json: recipes, each_serializer: RecipeSerializer
  end

  def show
    render json: @recipe, serializer: DetailedRecipeSerializer
  end

  def create
    recipe = Recipe.new(recipe_params)

    params[:ingredients].each do |ing|
      ingredient = Ingredient.find_or_create_by(name: ing[:ingredient])
      ingredient.find_ghg_product
      ingredient.find_water_product
      ingredient.find_eut_product

      recipe.recipe_ingredients.build(ingredient: ingredient, unit: ing[:unit], quantity: ing[:quantity], whole_line: ing[:whole_line])
    end

    if recipe.save
      render json: recipe, serializer: DetailedRecipeSerializer
    else
      render json: { a: "ahhh shit" }
    end
  end

  def update
    ri = []
    params[:ingredients].each do |ing|
      ingredient = Ingredient.find_or_create_by(name: ing[:ingredient])
      ingredient.find_ghg_product
      ingredient.find_water_product
      ingredient.find_eut_product

      ri << RecipeIngredient.update_or_create_by({ ingredient: ingredient, recipe: @recipe }, { unit: ing[:unit], quantity: ing[:quantity], whole_line: ing[:whole_line] })
    end

    if @recipe.save
      render json: @recipe, serializer: DetailedRecipeSerializer
    else
      render json: { a: "ahhh shit" }
    end
  end

  def destroy
    recipe.destroy
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :instructions, :public, :image, :yield, :ingredients)
  end
end
