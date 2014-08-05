class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
	  session[:user_email] = user.email
	  session[:user_fullname] = user.fullname
	  session[:user_birthday] = user.birthday
	  session[:user_phone] = user.phone
	  session[:user_status] = user.status
		session[:user_avatar] = user.avatar
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
	  session[:user_email] = nil
	  session[:user_fullname] = nil
	  session[:user_birthday] = nil
	  session[:user_phone] = nil
	  session[:user_status] = nil
		session[:user_avatar] = nil
    redirect_to root_path
  end
end