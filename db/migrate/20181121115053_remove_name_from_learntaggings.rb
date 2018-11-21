class RemoveNameFromLearntaggings < ActiveRecord::Migration[5.2]
  def change
    remove_column :learntaggings, :name
  end
end
