class UsersController < ApplicationController

  def create
      @user = User.create(user_params)
      if @user.save
        redirect 'sessions/create'
      else
        puts ("hello")
      end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
