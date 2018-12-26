class RenameColmun < ActiveRecord::Migration[5.2]
  def change
  	rename_column :additional_ammos, :type, :type_bul
  end
end
