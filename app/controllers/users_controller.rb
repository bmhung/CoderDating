class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all.shuffle
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      render "new"
    end
  end

  def new

  end

  def user_params
    params.required(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
