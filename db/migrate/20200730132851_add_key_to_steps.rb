class AddKeyToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :key, :string
  end
end
