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

  #   def update
  #     if @professor.update(professor_params)
  #       redirect_to @professor
  #     else
  #       @subjects = Subject.all
  #       render :edit
  #     end
  #   end

  #   def destroy
  #     @professor.destroy
  #     session.delete :user_id
  #     session.delete :user_type
  #     flash[:message] = "You have self destructed."
  #     redirect_to welcome_path
  #   end
end
