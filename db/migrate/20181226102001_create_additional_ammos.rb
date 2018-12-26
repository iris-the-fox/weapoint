class CreateAdditionalAmmos < ActiveRecord::Migration[5.2]
  def change
    create_table :additional_ammos do |t|
      t.string :type
      t.string :country
      t.string :weight
      t.string :speed
      t.string :energy
      t.references :ammunition, foreign_key: true

      t.timestamps
    end
  end
end
