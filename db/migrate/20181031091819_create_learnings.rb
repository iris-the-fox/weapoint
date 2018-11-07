class CreateLearnings < ActiveRecord::Migration[5.2]
  def change
    create_table :learnings do |t|
      t.string :name
      t.text :note
      t.string :tag
      t.integer :range

      t.timestamps
    end
  end
end
