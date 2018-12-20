class PostsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @posts = Post.all
  end

  def show
    find_post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(merge_params)
    if(@post.save) then redirect_to @post else render 'new' end
  end

  def edit
    find_post
  end

  def update
    find_post
    if(@post.update(post_params)) then redirect_to @post else render 'edit' end
  end

  def destroy
    find_post
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

  def merge_params
    post_params.merge(user_id: current_user.id, email: current_user.email)
  end

  def find_post
    @post = Post.find(params[:id])
  end


end
