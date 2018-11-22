class AddRateToFirearms < ActiveRecord::Migration[5.2]
  def change
    add_column :firearms, :rate_of_fire, :float
  end
end
