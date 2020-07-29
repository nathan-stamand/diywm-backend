class StepsController < ApplicationController
  def index
    project = Project.find_by(id: params[:project_id])
    steps = project.steps
    render json: StepSerializer.new(steps)
  end
end
