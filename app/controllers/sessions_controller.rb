class SessionsController < ApplicationController
  force_ssl

  def new
  end
  
  def create
    #raise params.to_yaml
    user = User.find_by_name(params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_path
    else
      flash.now.alert = "Invalid Name or Password"
      render "new"
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
  
end
