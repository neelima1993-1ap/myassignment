class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :role_id, default: 0, null: false

      t.timestamps
    end
  end
end
