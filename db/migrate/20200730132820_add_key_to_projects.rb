class AddKeyToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :key, :string
  end
end
