require "digest"

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    session[:current_tab] = 3
    @users = User.all
    #@top_user_id = Post.select('user_id').group(:user_id).limit(5).order('created_at DESC')
    @top_user =  User.all.sort{ |a,b| b.posts.count <=> a.posts.count }.first(4)
    #binding.pry    
    @last_user = User.limit(4).order('created_at DESC')
  end

  def search
    @top_user =  User.all.sort{ |a,b| b.posts.count <=> a.posts.count }.first(5)
    # @users_with_email = User.where(email: params[:keyword])

    # @users_with_fullname = User.where(fullname: params[:keyword])

    # @users = @users_with_fullname + @users_with_email
    
    @keyword = params[:keyword]    
    t = User.arel_table

    @users  = User.where(
      t[:fullname].matches("%#{params[:keyword]}%").
      or(t[:email].matches("%#{params[:keyword]}%"))
    )
    return @users

  end

  def connect
    @connect = Connect.create(user_id: session[:user_id], friend: params[:user_id][0], status: '0')
    redirect_to request.referrer
  end

  def remove_connect
    @connect = Connect.where(user_id: session[:user_id], friend: params[:user_id][0]).destroy_all
    @connect = Connect.where(friend: session[:user_id], user_id: params[:user_id][0]).destroy_all
    redirect_to request.referrer
  end
  def reject_connect
    @connect = Connect.where(friend: session[:user_id], user_id: params[:user_id][0]).destroy_all
    redirect_to request.referrer
  end
  def accept_connect
    @connect = Connect.find_by(friend: session[:user_id], user_id: params[:user_id][0])
    @connect.update(status: '1')
    redirect_to :back
  end

  def waiting_connect
    #binding.pry
    @user = User.where(id: session[:user_id]).first
    #@posts = Post.where user_id: @user.id, status: '1'

    @remain_connect = Connect.where(friend: session[:user_id], status: 0)
    @users = User.where(id: @remain_connect.pluck(:user_id))
  end

  def signup
    @user = User.new
  end

  def login
    session[:current_tab] = 2
    if session[:user_id].nil? 
      @users_all = User.all
      @check = false
      @users_all.each do |user|
        if params["email"] == user.email and Digest::MD5.hexdigest(params["password"]) == user.password
          session[:user_id] = user.id
          session[:user_email] = user.email
          session[:user_fullname] = user.fullname
          session[:user_birthday] = user.birthday
          session[:user_phone] = user.phone
          session[:user_status] = user.status
          session[:user_avatar] = user.avatar
          @check = true

          redirect_to feed_posts_path
        end
        if @check
          @msg = "Login successfully"
        else
          if params["email"] == nil
            @msg = ""
          else @msg = "Login Fails"
          end
        end
      end
    else
      redirect_to feed_posts_path  
    end
  end

  def logout
    session[:user_id] = nil
    session[:user_email] = nil
    session[:user_fullname] = nil
    session[:user_birthday] = nil
    session[:user_phone] = nil
    session[:user_status] = nil
    session[:user_avatar] = nil
    session[:waiting_connect] = nil
    @msg = ""
    redirect_to root_path
  end

  def posts
    @user = User.find(params[:id])
    @posts = Post.where user_id: @user.id, status: '1'
  end

  def post_show
    @post = Post.find(params[:post_id])
  end


  # GET /users/1
  # GET /users/1.json
  def show
    session[:current_tab] = 4
    @user = User.find(params[:id])
    @posts = Post.where user_id: @user.id, status: '1'
    #binding.pry
    @friend_list1 = Connect.where user_id: session[:user_id], status: '1'
    @friend_list2 = Connect.where friend: session[:user_id], status: '1'
    @friend_list = @friend_list1 + @friend_list2
    @friend_user1 = User.where id: @friend_list1.pluck(:user_id)
    @friend_user2 = User.where id: @friend_list1.pluck(:friend)
    @friend_user3 = User.where id: @friend_list2.pluck(:user_id)
    @friend_user4 = User.where id: @friend_list2.pluck(:friend)
    @friend_user = @friend_user1 + @friend_user2 + @friend_user3 + @friend_user4
    
  end

  def uploadAvatar
    if params[:datafile] != nil
      if session[:user_status] > 0
        name = params[:user_id].to_s
      else
        name = session[:user_id].to_s
      end
      directory = "public/avatar/"
      path = File.join(directory, name)
      File.open(path, "wb") { |f| f.write(params[:datafile].read) }
      @user = User.find_by(id: session[:user_id])
      @user.update(avatar: session[:user_id])
      session[:user_avatar] = name
    end
    redirect_to :back
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        session[:user_email] = @user.email
        session[:user_fullname] = @user.fullname
        session[:user_birthday] = @user.birthday
        session[:user_phone] = @user.phone
        session[:user_status] = @user.status
        session[:user_avatar] = @user.avatar

        redirect_to root_path
      else
        # redirect_to signup_users_path
        format.html { render :signup }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        if session[:user_status] == 1
          format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        else
        format.html { redirect_to :back, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
        end
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user][:password] = Digest::MD5.hexdigest(params[:user][:password])
      
      params.require(:user).permit(:email, :password, :fullname, :birthday, :phone, :status, :avatar)
    end
end
