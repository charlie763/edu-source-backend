class ResourcesController < ApplicationController
  def create 
    Resource.create(resource_params)
    render json: { message: 'resource saved'}
  end

  def index
    resources = Resource.all 
    render json: resources
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