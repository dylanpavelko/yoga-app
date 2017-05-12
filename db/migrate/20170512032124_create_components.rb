class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.references :parent, polymorphic: true
      t.references :content, polymorphic: true
      t.integer :order
      t.integer :repeat

      t.timestamps
    end
  end
end
