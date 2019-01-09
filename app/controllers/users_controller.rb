# frozen_string_literal: true

class UsersController < ApplicationController
  def all
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
    @allposts = Post.all.order('posts.created_at DESC')
  end

  def find
    @user = User.find(params[:id])

  end
end
