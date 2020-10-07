class ResourceController < ApplicationController
  def create 
    binding.pry
    Resource.create(resource_params)
    render json: { message: 'resource saved'}
  end

  private 
  def resource_params
    
  end
end