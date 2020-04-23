class CreateVessels < ActiveRecord::Migration[6.0]
  def change
    create_table :vessels do |t|
      t.string :type
      t.integer :volume
      t.string :units
      t.boolean :airlock
      t.boolean :weight
      t.string :material
      t.string :notes
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
