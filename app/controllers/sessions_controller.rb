class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: session_params[:username])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      render json: { username: @user.username }
    else
      render json: { error: "Incorrect username or password" }
    end
  end

  def destroy
    session.delete :user_id
  end

  private

  def session_params
    params.require(:session).permit(:username, :password)
  end
end
