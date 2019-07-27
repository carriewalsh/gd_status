class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email_address: params[:email_address])
    # binding.pry
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in"
      redirect_to dashboard_path
    else
      flash[:error] = "Incorrect email and/or password"
      render :new
    end
  end
end
