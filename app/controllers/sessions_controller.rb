class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(request.env["omniauth.auth"])
  	session[:user_id] = @user.id
  	redirect_to :home
  end

  def destroy
    session[:user_id] = nil
  	redirect_to :home
  end
end
