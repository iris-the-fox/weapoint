class CreateChoosenArms < ActiveRecord::Migration[5.2]
  def change
    create_table :choosen_arms do |t|
      t.string :firearm_id

      t.timestamps
    end
  end
end
