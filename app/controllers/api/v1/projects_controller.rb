class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects, each_serializer: ProjectSerializer
  end

  def show
    @project = Project.find(params[:id])
    render json: @project, serializer: ProjectSerializer
  end

  def user_projects
    @projects = Project.where(user_id: params[:id])
    render json: @projects, each_serializer: ProjectSerializer
  end

  def create
    state_params = {
      name: params[:project][:name],
      end_date: params[:project][:end_date],
      user_id: params[:project][:user_id]
    }
    # byebug
    project = Project.create(state_params)
    createIngredients(params[:ingredients], project.id)
    createVessels(params[:vessels], project.id)
    render json: {project: ProjectSerializer.new(project)}
  end

  def update
    project = Project.find(params[:id])
    # byebug
    project.update(project_params)
    if project.valid? 
      render json: { project: ProjectSerializer.new(project) }
    else
      render json: { error: 'failed to update project' }, status: :not_acceptable
    end
  end

  def createIngredients(array,id)
    array.each do |ingredient|
      newIngredient = Ingredient.create({project_id: id, name: ingredient[:name], quantity: ingredient[:quantity], units: ingredient[:units], prep: ingredient[:prep]})
    end
  end

  def createVessels(array,id)
    array.each do |vessel|
      newVessel = Vessel.create({project_id: id, vessel: vessel[:vessel], volume: vessel[:volume], units: vessel[:units], airlock: vessel[:airloack], weight: vessel[:weight], material: vessel[:material], notes: vessel[:notes]})
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    render json: {message: "Project removed"}
  end

  private

  def project_params
    params.require(:project).permit(:name, :end_date, :user_id, :id, :completed, :completion_date, :ingredients, :vessels, :ingredients_attributes => [:id, :name, :prep, :quantity, :units], :vessels_attributes => [:id, :vessel, :volume, :material, :units])
  end


end
