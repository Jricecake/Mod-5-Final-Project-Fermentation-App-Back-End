class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects, each_serializer: ProjectSerializer
  end

  def show
    @project = Project.find(params[:id])
    render json: @project, serializer: ProjectSerializer
  end
end
