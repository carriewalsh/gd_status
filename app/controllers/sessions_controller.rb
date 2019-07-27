class SessionsController < ApplicationController
  def new
    redirect_to profile_path
  end
end
