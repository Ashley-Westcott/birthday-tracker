class FriendshipsController < ApplicationController

  def add_friend
    @user = User.find(params[:followee_id])
    @new_friendship = Friendship.find_by(follower_id: current_user.id, followee_id: @user.id)
    if @user.id == current_user.id
      redirect_to current_user
      flash[:notice] = "You already know your birthday!"
    elsif @new_friendship == nil
      Friendship.create(follower_id: current_user.id, followee_id: @user.id)
      redirect_to current_user
      flash[:notice] = "You now follow #{@user.name}"
      else
    redirect_to current_user
    flash[:notice] = "You already follow #{@user.name}"
      end
  end

  def delete_friend
    @user = User.find(params[:followee_id])
    @unfollow = Friendship.find_by(follower_id: current_user.id, followee_id: @user.id)
    @unfollow.destroy
    redirect_to current_user
  end



end
