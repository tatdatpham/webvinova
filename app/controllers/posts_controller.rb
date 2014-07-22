class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    remain_connect_count()
    @posts = Post.where user_id: session[:user_id]
    if params[:user_id] != nil
      @posts = Post.where user_id: params[:user_id], status: '1', sharewith: ['0', '1']
    end
  end

  def feed
    remain_connect_count()
    @posts = Post.where status: 1, sharewith: [0,1] 
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
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
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
      params.require(:post).permit(:title, :content, :sharewith, :view, :status, :user_id)
    end
end
