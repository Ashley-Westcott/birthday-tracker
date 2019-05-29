class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :destroy]

  def index
    @users = User.all
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

  def show
    @user = User.find(params[:id])
  end

private

def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :telephone_number, :img_url, :username, :email, :password)
end

end
