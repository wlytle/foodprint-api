class UsersController < ApplicationController
  def index
    current_user
    render json: @current_user.to_json(only: [:id, :username])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
    else
    end
  end
end
