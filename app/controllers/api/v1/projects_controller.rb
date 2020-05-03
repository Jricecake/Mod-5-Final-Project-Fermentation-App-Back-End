class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects, each_serializer: ProjectSerializer
  end

  def show
    @project = Project.find(params[:id])
    render json: @project, serializer: ProjectSerializer
  end

  def create
    state_params = {
      name: params[:project][:name],
      end_date: params[:project][:end_date],
      user_id: params[:project][:user_id]
    }
    project = Project.create(state_params)
    createIngredients(params[:ingredients], project.id)
    render json: {project: ProjectSerializer.new(project)}
  end

  def createIngredients(array,id)
    array.each do |ingredient|
      newIngredient = Ingredient.create({project_id: id, name: ingredient[:name], quantity: ingredient[:quantity], units: ingredient[:units], prep: ingredient[:prep]})
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    render json: {message: "Project removed"}
  end

  private

  def project_params
    params.require(:project).permit(:name, :end_date, :user_id, :ingredients)
  end


end
