class AddFixedToAmmunitions < ActiveRecord::Migration[5.2]
  def change
    add_column :ammunitions, :fixed, :boolean
  end
end
