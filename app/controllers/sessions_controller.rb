class SessionsController < ApplicationController
  def create
    @user = User.find_by(params[:username])
  end
end
