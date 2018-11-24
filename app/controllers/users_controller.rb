class UsersController < ApplicationController

  def new

  end

  def create
      @user = User.create(user_params)
      if @user.save
        redirect_to 'users#welcome'
      else
        redirect_to new_user_url
      end
  end

  def welcome
    put "hi #{@user.name}"
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
