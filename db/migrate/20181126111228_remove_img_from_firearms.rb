class RemoveImgFromFirearms < ActiveRecord::Migration[5.2]
  def change

remove_column :firearms, :img_main

    
  end
end
