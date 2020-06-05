class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :end_date
      t.boolean :completed, default: false
      t.string :completion_date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
