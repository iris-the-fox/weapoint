class AddSummaryToLearnings < ActiveRecord::Migration[5.2]
  def change
    add_column :learnings, :summary, :string
    change_column :learnings, :range, :integer, {default:0}
    remove_column :learnings, :tag
  end
end
