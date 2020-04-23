class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.string :units
      t.string :prep
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
