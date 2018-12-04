class AddImagebleToPicture < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :imageable_id, :integer
    add_column :pictures, :imageable_type, :string

    add_index :pictures, [:imageable_type, :imageable_id]
  end
end
