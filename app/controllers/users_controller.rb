class UsersController < ApplicationController

  def new

  end

  def create
      @user = User.create(user_params)
      if @user.save
        binding.pry
        redirect_to action: 'create', controller: 'sessions', name: @user.name, password: @user.password
      else
        redirect_to new_user_url
      end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
