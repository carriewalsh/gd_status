class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in"
      redirect_to dashboard_path
    else
      flash[:error] = "Incorrect email and/or password"
      redirect_to welcome_path
    end
  end

  def destroy
    session.clear
    flash[:success] = "Successfully logged out"
    redirect_to welcome_path
  end

  private

  def user_params
    params.require(:session).permit(:email,:password)
  end
end
