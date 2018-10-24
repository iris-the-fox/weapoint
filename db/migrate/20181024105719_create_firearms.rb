class CreateFirearms < ActiveRecord::Migration[5.2]
  def change
    create_table :firearms do |t|
      t.string :name
      t.string :typearm
      t.string :atstus
      t.string :country
      t.integer :year
      t.string :caliber
      t.string :action_type
      t.string :trigger_type
      t.string :feeding_mech
      t.integer :barrel_l
      t.integer :over_l
      t.integer :over_l_f
      t.integer :em_w
      t.integer :l_w
      t.integer :am_cap
      t.string :fr_mat
      t.string :stock_type
      t.string :img_main

      t.timestamps
    end
  end
end
