class CreateAdditionalFires < ActiveRecord::Migration[5.2]
  def change
    create_table :additional_fires do |t|
      t.string :typearm
      t.string :status
      t.string :country
      t.string :year
      t.string :caliber
      t.string :action_type
      t.string :trigger_type
      t.string :barrel_l
      t.string :over_l
      t.string :over_l_f
      t.string :em_w
      t.string :l_w
      t.string :am_cap
      t.string :fr_mat
      t.string :stock_type
      t.string :rate_of_fire
      t.references :firearm, foreign_key: true

      t.timestamps
    end
  end
end
