class CreateTareas < ActiveRecord::Migration[7.0]
  def change
    create_table :tareas do |t|
      t.string :title
      t.string :description
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
