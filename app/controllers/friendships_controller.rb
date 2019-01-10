# frozen_string_literal: true

class FriendshipsController < ApplicationController

  def index
    @friends = Friendship.all
    redirect_to profile_path(user.id)
  end

  def new
    @friend = Friendship.new(merge_params)
  end

  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = 'Yay friend.'
      redirect_to root_url
    else
      flash[:error] = 'Not happening, bro.'
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = 'You monster.'
    redirect_to root_url
  end
end

def post_params
  params.require(:friendship).permit(:user_id, :avatar)
end

def merge_params
  post_params.merge(user_id: current_user.id, email: current_user.email, posted_to: params[:posted_to])
end
