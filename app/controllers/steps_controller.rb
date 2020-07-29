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
end
