class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
    else
      render json: { error: "Incorrect username or password" }
    end
  end

  #   def destroy
  #     session.delete :user_id
  #     session.delete :user_type
  #     flash[:message] = "Thank you for studying. See you next time."
  #     redirect_to welcome_path
  #   end
end
