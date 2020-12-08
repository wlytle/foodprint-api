class RecipesController < ApplicationController
  before_action :get_recipe, only: [:show, :update, :destroy]

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

      ingredient_type = IngredientType.find_or_create_by(name: ing[:ingredient_type])

      recipe.recipe_ingredients.build(ingredient: ingredient, ingredient_type: ingredient_type, unit: ing[:unit])
    end

    recipe.recipe_ingredients.each { |ri| ri.make_whole_line }
    if recipe.save
      render json: recipe, serializer: DetailedRecipeSerializer
    else
      render json: { a: "ahhh shit" }
    end
  end

  def update
    params[:ingredients].each do |ing|
      ingredient = Ingredient.find_or_create_by(name: ing[:ingredient])
      ingredient.find_ghg_product
      ingredient.find_water_product
      ingredient.find_eut_product

      ingredient_type = IngredientType.find_or_create_by(name: ing[:ingredient_type])

      RecipeIngredient.update_or_create_by({ ingredient: ingredient, recipe: @recipe }, { unit: ing[:unit], ingredient_type: ingredient_type, quantity: ing[:quantity] })
    end
    #First get all inout ingrdients
    new_ing = []
    params[:ingredients].each { |i| new_ing << i[:ingredient] }
    #remove ingredients that aren't present anymore
    @recipe.ingredients.each do |all_ing|
      unless new_ing.include?(all_ing[:name])
        RecipeIngredient.find_by(recipe: @recipe, ingredient: all_ing).destroy
      end
    end

    if @recipe.save
      render json: @recipe, serializer: DetailedRecipeSerializer
    else
      render json: { a: "ahhh shit" }
    end
  end

  def destroy
    @recipe.destroy
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :instructions, :public, :image, :yield, :ingredients)
  end
end
