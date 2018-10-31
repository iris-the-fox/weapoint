class CreateAmmunitions < ActiveRecord::Migration[5.2]
  def change
    create_table :ammunitions do |t|
      t.string :name
      t.string :type_bul
      t.string :country
      t.integer :weight
      t.integer :speed
      t.integer :energy
      t.string :note

      t.timestamps
    end
  end
end
