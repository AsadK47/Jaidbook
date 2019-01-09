# frozen_string_literal: true

class ProfilesController < ApplicationController

  before_action :authenticate_user!, except: :index
  before_action :find_post, except: [:index, :new, :create]

  def show
    @posts = Post.where(user_id: current_user).order('posts.created_at DESC')
  end

  def find_post
  end


end
