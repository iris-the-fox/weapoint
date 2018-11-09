class AddDatenewsToPosts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :posts, :date
    add_column :posts, :datenews, :datetime
  end
end
