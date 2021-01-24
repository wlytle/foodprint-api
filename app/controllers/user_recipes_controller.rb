class UserRecipesController < ApplicationController
  def create
    current_user
    ur = UserRecipe.new(user: @current_user, recipe_id: params[:recipe_id])
    if ur.save
      render json: ur.to_json
    else
      render json: { error: "Something went wrong :(" }
    end
  end
end
