class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :text
      t.integer :day_id
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
