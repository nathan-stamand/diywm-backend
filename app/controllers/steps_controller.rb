class StepsController < ApplicationController
  def index
    project = Project.find_by(id: params[:project_id])
    steps = project.steps
    render json: StepSerializer.new(steps)
  end

  def show
    project = Project.find_by(id: params[:project_id])
    project ? step = project.steps.select(|step| step.id == params[:id]) : step = nil
    if step
      render json: StepSerializer.new(step)
    else
      render json: {message: 'No step found. Please refresh and try again.'}
    end
  end

  def create
    project = Project.find_by(id: params[:project_id])
    if project
      step = project.steps.build(step_params)
      if step.save
        render json: StepSerializer.new(step)
      else
        render json: { message: 'Step could not be created. Please make sure inputs are valid.' }
      end
    else
      render json: {
        message: 'Project not found: Step could not be created. Please refresh and try again.'
      }
    end
  end
end
