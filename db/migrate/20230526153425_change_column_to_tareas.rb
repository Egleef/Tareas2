    class ChangeColumnToTareas < ActiveRecord::Migration[7.0]
      def change
        remove_column :tareas, :user_id_id
        add_reference :tareas, :user, null: false, foreign_key: true
      end
    end
    
