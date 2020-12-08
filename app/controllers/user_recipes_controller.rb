class UserRecipesController < ApplicationController
  def index
    current_user
    render json: @current_user
  end
end
