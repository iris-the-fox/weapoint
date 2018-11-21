class CreateLearntaggings < ActiveRecord::Migration[5.2]
  def change
    create_table :learntaggings do |t|
      t.string :name
      t.belongs_to :learning, foreign_key: true
      t.belongs_to :learntag, foreign_key: true

      t.timestamps
    end
  end
end
