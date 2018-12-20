class ProfilesController < ApplicationController
  def show
    @posts = Post.where(:user_id => current_user).order('posts.created_at DESC')
  end
end
