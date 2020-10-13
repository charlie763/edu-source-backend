class CommentsController < ApplicationController
  def create
    Comment.create(
      text: comment_params[:text], 
      user_id: comment_params[:userId], 
      resource_id: comment_params[:resourceId]
      )
    render json: { message: 'comment saved'}
  end

  def index

  end

  private 
  def comment_params
    params.permit(:text, :userId, :resourceId)
  end
end
