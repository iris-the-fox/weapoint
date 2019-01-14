class ChangeColumnAdditionalAmmosBackAgain < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :additional_ammos, :type_bul, nil

  end
end
