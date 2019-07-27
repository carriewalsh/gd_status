class SessionsController < ApplicationController
  def new
    redirect_to dashboard_path
  end
end
