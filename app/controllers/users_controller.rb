class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      render json: { valid: "true", user: {id: user.id, username: user.username}, session: session}
    else
      render json: { valid: "false", errorMessages: user.errors.messages }
    end
  end

  private
  def user_params
    params.permit(:username, :password)
  end
end
