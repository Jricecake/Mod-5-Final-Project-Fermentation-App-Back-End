class CreateBrines < ActiveRecord::Migration[6.0]
  def change
    create_table :brines do |t|
      t.integer :amount
      t.string :units
      t.integer :salt
      t.integer :sugar
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
