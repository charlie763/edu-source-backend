class ResourcesController < ApplicationController
  def create 
    Resource.create(resource_params)
    render json: { message: 'resource saved'}
  end

  private 
  def resource_params
    params.require(:resource).permit(:title, 
      :description, 
      :lowerGradeBound, 
      :upperGradeBound, 
      :subject, 
      :url, 
      :videoUrl)
  end
end