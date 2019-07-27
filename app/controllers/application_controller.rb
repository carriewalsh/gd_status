class ApplicationController < ActionController::Base
  helper_method :current_user, :current_user?, :date


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?
    current_user && current_user.admin?
  end

  def require_admin!
    if current_user.nil?
      four_oh_four
    else
      four_oh_four unless current_user.admin?
    end
  end

  def require_user!
    if current_user.nil?
      four_oh_four
    else
      four_oh_four unless current_user.user?
    end
  end
end
