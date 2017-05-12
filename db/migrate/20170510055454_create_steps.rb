class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.references :pose, foreign_key: true
      t.integer :direction
      t.integer :setup_time
      t.integer :pose_time

      t.timestamps
    end
  end
end
