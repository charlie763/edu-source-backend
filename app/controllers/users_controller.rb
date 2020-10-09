class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { valid: "true", user: user.as_json}
    else
      render json: { valid: "false", errorMessages: user.errors.messages }
    end
  end
end
