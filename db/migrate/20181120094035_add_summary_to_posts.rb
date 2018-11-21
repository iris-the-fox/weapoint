class AddSummaryToPosts < ActiveRecord::Migration[5.2]
  def change

    add_column :posts, :summary, :string
    change_column :posts, :range, :integer, {default:0}

    
  end
end
