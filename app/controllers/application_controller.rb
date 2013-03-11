class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper


#  def current_user
#    @current_user ||= User.find(session[:user_id]) if session[:user_id]
#  end

#  def isAdmin
#    current_user.isadmin == 1
#  end

  private
  
  def must_be_signed_in
    unless signed_in?
      store_location
      redirect_to signin_path,notice: "Please sign in"
    end
  end
  
  def must_be_admin
    unless signed_in? && isadmin
      redirect_to root_path,notice: "管理者のみ可能です。"
    end
  end

#  helper_method :current_user
#  helper_method :isAdmin

end
