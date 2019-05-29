class FriendshipsController < ApplicationController

  def add_friend

    @user = User.find(params[:followee_id])

    Friendship.create(follower_id: current_user.id, followee_id: @user.id)
    redirect_to current_user
  end

  # def user_params
  #     params.require(:user).permit(:first_name, :last_name, :birthday, :telephone_number, :img_url, :username, :email, :password, :search)
  # end

end
