class UsersController < ApplicationController

  def new

  end

  def create
      @user = User.create(user_params)
      if @user.save
        redirect_to 'users/create'
      else
        redirect_to new_user_url
      end
  end

  def welcome
      
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
