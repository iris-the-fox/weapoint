class AddSummaryToFirearms < ActiveRecord::Migration[5.2]
  def change
    add_column :firearms, :summary, :text
  end
end
