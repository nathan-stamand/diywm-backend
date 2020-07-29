class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :header
      t.string :materials
      t.integer :time
      t.string :directions

      t.timestamps
    end
  end
end
