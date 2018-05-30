class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :name
      t.text :description
      t.integer :user_id, default: 0, null: false

      t.timestamps
    end
  end
end
