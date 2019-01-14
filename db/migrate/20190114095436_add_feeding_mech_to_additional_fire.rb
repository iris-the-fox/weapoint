class AddFeedingMechToAdditionalFire < ActiveRecord::Migration[5.2]
  def change
    add_column :additional_fires, :feeding_mech, :string
    
  end
end
