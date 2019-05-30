class FriendshipsController < ApplicationController

  def add_friend
    @user = User.find(params[:followee_id])
    @new_freidnship = Friendship.find_or_create_by(follower_id: current_user.id, followee_id: @user.id)
      
    redirect_to current_user
    flash[:notice] = "You are already friends"
  end

  def delete_friend
    @user = User.find(params[:followee_id])
    @unfollow = Friendship.find_by(follower_id: current_user.id, followee_id: @user.id)
    @unfollow.destroy
    redirect_to current_user
  end



end
