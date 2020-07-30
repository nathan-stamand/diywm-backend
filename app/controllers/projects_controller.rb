class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects)
  end

  def show
    project = Project.find_by(id: params[:id])
    render json: ProjectSerializer.new(project)
  end

  def create
    project = Project.new(project_params)
    if project.save
      render json: ProjectSerializer.new(project)
    else
      errorMsg = 
      <<-MSG
      Failed to create project. 
      Please double check that you have input valid information. 
      MSG
      render json: {
          message: errorMsg
        }
    end
  end

  def update
    project = Project.find_by(id: params[:id])
    if project
      project.update(project_params)
      if project.save
        render json: ProjectSerializer.new(project)
      else
        render json: { message: 'Problem saving project. Please refresh and try again.'}
      end
    else
      render json: {
        message: 'Project not found. Please refresh and try again.'
      }
    end
  end

  def destroy
    project = Project.find_by(id: params[:id])
    if project
      project.destroy
      render json: {project_id: params[:id]}
    else
      render json: {message: 'Project not found. Please refresh and try again.'}
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :materials, :blog, :total_time)
  end
end
