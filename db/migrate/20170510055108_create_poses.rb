class CreatePoses < ActiveRecord::Migration[5.1]
  def change
    create_table :poses do |t|
      t.string :english_name
      t.string :sanskrit_name
      t.string :sanskrit_pronunciation
      t.integer :difficulty

      t.timestamps
    end
  end
end
