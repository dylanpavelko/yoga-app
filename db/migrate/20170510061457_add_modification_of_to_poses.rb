class AddModificationOfToPoses < ActiveRecord::Migration[5.1]
  def change
    add_reference :poses, :modification_of, foreign_key: true
  end
end
