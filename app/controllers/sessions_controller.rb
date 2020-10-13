class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      token = issue_token(user)
      render json: { valid: "true", user: {id: user.id, username: user.username}, token: token}
    else
      render json: { valid: "false", errorMessages: user.errors.messages }
    end
  end
end