class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    remain_connect_count()
    session[:current_tab] = 2
    @posts = Post.where user_id: session[:user_id]
    if params[:user_id] != nil
      # Public post
      @posts_public = Post.where status: '1', sharewith: '0', user_id: params[:user_id]
      # Shared post
      @friend_list = Share.where user_id: session[:user_id]
      @posts_shared = Post.where id: @friend_list.pluck(:post_id), sharewith: '1', status: '1', user_id: params[:user_id]
      @posts = @posts_public + @posts_shared
    end
  end
  
  ###
  def feed
    session[:current_tab] = 1
    remain_connect_count()
    # Public post
    @posts_public = Post.where status: '1', sharewith: '0'
    # Shared post
    @friend_list = Share.where user_id: session[:user_id]
    @posts_shared = Post.where id: @friend_list.pluck(:post_id), sharewith: '1', status: '1'
    #my post
    @my_post = Post.where user_id: session[:user_id], status: '1', sharewith: '1'
      
    @posts = @posts_public + @posts_shared + @my_post
  end

  def remain_connect_count
    @remain_connect = Connect.where(friend: session[:user_id], status: 0)
    @users_count = User.where(id: @remain_connect.pluck(:user_id))
    session[:waiting_connect] = @users_count.count
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    view_plus = @post.view + 1
    @post.update(view: view_plus)
    @last_posts = Post.limit(5).order('created_at DESC')
  end

  def uploadThumbnail
    name = ('a'..'z').to_a.shuffle[0,8].join
      directory = "public/thumbnail/"
      path = File.join(directory, name)
      File.open(path, "wb") { |f| f.write(params[:datafile].read) }
      redirect_to :back
  end

  # GET /posts/new
  def new
    @remain_connect_friend_me = Connect.where(friend: session[:user_id], status: 1)
    @friend_me = User.where(id: @remain_connect_friend_me.pluck(:user_id))

    @remain_connect_me_friend = Connect.where(user_id: session[:user_id], status: 1)
    @me_friend = User.where(id: @remain_connect_me_friend.pluck(:friend))

    @friend = @friend_me + @me_friend
       
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @remain_connect_friend_me = Connect.where(friend: session[:user_id], status: 1)
    @friend_me = User.where(id: @remain_connect_friend_me.pluck(:user_id))

    @remain_connect_me_friend = Connect.where(user_id: session[:user_id], status: 1)
    @me_friend = User.where(id: @remain_connect_me_friend.pluck(:friend))

    @friend = @friend_me + @me_friend

    @user_shared = Share.where post_id: params[:id]
    @friend_shared = User.where id: @user_shared.pluck(:user_id)
  end

  # POST /posts
  # POST /posts.json
  def create
    
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        friend_list = params[:friend_list].split(/,/)

        friend_list.each do |f|
          share = Share.create(post_id: @post.id, user_id: f)
        end
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        friend_list = params[:friend_list].split(/,/)
        share_destroy = Share.where(post_id: @post.id).destroy_all

        friend_list.each do |f|
          share = Share.create(post_id: @post.id, user_id: f)
        end

        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :sharewith, :view, :status, :user_id, :thumbnail)
    end
end
