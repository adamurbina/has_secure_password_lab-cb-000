class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:user][:name])
    binding.pry
    return head(:forbidden) unless user.authenticate(params[:user][:password])
    session[:user_id] = user.id
  end

  private

  def sessions_params
    params.require(:user).permit(:name, :password)
  end

end
