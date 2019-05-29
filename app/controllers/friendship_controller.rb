class FriendshipController < ApplicationController

  def add_friend
    @user = User.find(params[:id])
    @user.follower <<
    Friendship.create(follower_id: @user.id, followee_id: current_user.id)
  end

end
