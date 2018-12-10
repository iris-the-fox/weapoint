class RemoveTitlePicture < ActiveRecord::Migration[5.2]
  def change
  	 remove_column :pictures, :title
  end
end
