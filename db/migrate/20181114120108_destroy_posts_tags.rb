class DestroyPostsTags < ActiveRecord::Migration[5.2]
  def change
  	drop_table :posts_tags

  end
end
