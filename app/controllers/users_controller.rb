require "digest"

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    remain_connect_count()
    session[:current_tab] = 3
    @users = User.all
    #@top_user_id = Post.select('user_id').group(:user_id).limit(5).order('created_at DESC')
    @top_user =  User.all.sort{ |a,b| b.posts.count <=> a.posts.count }.first(5)
    
      
  end

  def search
    remain_connect_count()
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

  def remain_connect_count
    @remain_connect = Connect.where(friend: session[:user_id], status: 0)
    @users_count = User.where(id: @remain_connect.pluck(:user_id))
    session[:waiting_connect] = @users_count.count
  end

  def connect
    @connect = Connect.create(user_id: session[:user_id], friend: params[:user_id][0], status: '0')
    remain_connect_count()
    redirect_to request.referrer
  end

  def remove_connect
    @connect = Connect.where(user_id: session[:user_id], friend: params[:user_id][0]).destroy_all
    @connect = Connect.where(friend: session[:user_id], user_id: params[:user_id][0]).destroy_all
    remain_connect_count()
    redirect_to request.referrer
  end

  def accept_connect
    @connect = Connect.find_by(friend: session[:user_id], user_id: params[:user_id][0])
    @connect.update(status: '1')
    redirect_to users_path
  end

  def waiting_connect
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
          @check = true

          remain_connect_count()

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
    session[:waiting_connect] = nil
    @msg = ""
    redirect_to login_users_path
  end

  def posts
    remain_connect_count()
    @user = User.find(params[:id])
    @posts = Post.where user_id: @user.id, status: '1'
  end

  def post_show
    remain_connect_count()
    @post = Post.find(params[:post_id])
  end


  # GET /users/1
  # GET /users/1.json
  def show
    session[:current_tab] = 4
    @user = User.find(params[:id])
    @posts = Post.where user_id: @user.id, status: '1'
    
  end

  def uploadAvatar
    name = session[:user_id].to_s
      directory = "public/avatar/"
      path = File.join(directory, name)
      File.open(path, "wb") { |f| f.write(params[:datafile].read) }
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
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
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
      params[:user][:status] = 0
      
      params.require(:user).permit(:email, :password, :fullname, :birthday, :phone, :status)
    end
end
