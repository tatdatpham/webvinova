class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	def useronline_resign
	  Useronline.where(user_id: session[:user_id]).destroy_all
	  @useronline_current = Useronline.create(user_id: session[:user_id])

	  Useronline.where(["created_at < ?", (Time.now - 5.minute)]).destroy_all
	end
	  helper_method :useronline_resign

	def remain_connect_count
		@remain_connect = Connect.where(friend: session[:user_id], status: 0)
		@users_count = User.where(id: @remain_connect.pluck(:user_id))
		session[:waiting_connect] = @users_count.count
	end
	  helper_method :remain_connect_count
end
