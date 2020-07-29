class AddProjectIdToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :project_id, :integer
  end
end
