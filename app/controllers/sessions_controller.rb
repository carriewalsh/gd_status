class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    # binding.pry
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in"
      redirect_to dashboard_path
    else
      flash[:error] = "Incorrect email and/or password"
      redirect_to welcome_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:password)
  end
end
