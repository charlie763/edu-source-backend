class CommentsController < ApplicationController
  def create
    Comment.create(
      text: comment_params[:text], 
      user_id: comment_params[:userId], 
      resource_id: comment_params[:resource_id]
      )
    render json: { message: 'comment saved'}
  end

  def index
    comments = Comment.where(resource_id: params[:resource_id])
    render json: comments, include: { user: { only: [:username] } }
  end

  private 
  def comment_params
    params.permit(:text, :userId, :resource_id)
  end
end
