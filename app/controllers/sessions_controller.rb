class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:name])
    return head(:forbidden) unless user.authenticate(params[:password])
    session[:user_id] = user.id
  end

  private

  def sessions_params
    params.require(:user).permit(:name, :password)
  end
  
end
