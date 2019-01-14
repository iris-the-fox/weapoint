class AddFixedToFirearms < ActiveRecord::Migration[5.2]
  def change
    add_column :firearms, :fixed, :boolean
  end
end
