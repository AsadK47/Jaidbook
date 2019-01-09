# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :find_post, except: %i[index new create]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @posts = Post.all.order('posts.created_at DESC')
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(merge_params)
    if @post.save && @post.posted_to != nil
      redirect_to profile_path(@post.posted_to)
    elsif @post.save
       redirect_to @post
    elsif
      render 'new'
    end
  end

  def edit; end

  def update
    @post.update(post_params) ? (redirect_to @post) : (render 'edit')
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id, :avatar)
  end

  def merge_params
    post_params.merge(user_id: current_user.id, email: current_user.email, posted_to: params[:posted_to])
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
