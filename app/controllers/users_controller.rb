class UsersController < ApplicationController
  def show
    @conclaves = @professor.conclaves
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
    else
    end
  end
end
