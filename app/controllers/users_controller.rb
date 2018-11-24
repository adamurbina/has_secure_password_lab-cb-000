class UsersController < ApplicationController
  def create
      User.create(user_params)
  end

  private

  

end
