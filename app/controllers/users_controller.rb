class UsersController < ApplicationController

  def new

  end

  def create
      @user = User.create(user_params)
      if @user.save
        redirect_to 'sessions/create'
      else
        redirect_to :new
      end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
