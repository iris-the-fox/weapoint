class ChangeColumnNameLearnings < ActiveRecord::Migration[5.2]
  def change
  	rename_column :learnings, :name, :title
  end
end
