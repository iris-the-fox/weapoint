class ChangeColumnAdditionalAmmos < ActiveRecord::Migration[5.2]
  def change
  	change_column :additional_ammos, :type_bul, :string, {default:'[b] [/b]'}
  end
end
