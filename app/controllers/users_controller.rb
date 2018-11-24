class UsersController < ApplicationController
  def create
      User.create(params)
  end

  private

  
  
end
