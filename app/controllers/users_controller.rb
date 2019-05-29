class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :destroy]

  def index
      @users = User.search(params[:search])
  end

  def new
    @user = User.new
  end

  def create
      @user = User.create(user_params)
     if @user.valid?
       session[:user] = @user.id
       redirect_to user_path(@user), notice: "Signup successful!"
     else
       flash[:errors] = @user.errors.full_messages
       render new_user_path
     end
  end

  def edit
    @user = User.find(params[:id])
      if current_user == @user
      else redirect_to users_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
	  redirect_to login_path
  end

  def add_friend

  end


  def show
   @user = User.find(params[:id])
   @who_follows_you = @user.followers
   @who_you_follow = @user.followees
  end

private

def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :telephone_number, :img_url, :username, :email, :password, :search)
end

end
