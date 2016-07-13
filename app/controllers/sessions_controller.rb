class SessionsController < ApplicationController
  def create
    @email = params[:email]
    @pass = params[:password]

    @user = User.find_by(email: @email)
    if @user
      if @user.authenticate(@pass)
        session[:user_id] = @user.id
        return redirect_to users_path
      end
    end
    redirect_to login_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
