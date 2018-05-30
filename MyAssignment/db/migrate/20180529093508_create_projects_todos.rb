class CreateProjectsTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_todos do |t|
    	t.integer :project_id
    	t.integer :todo_id
    end
  end
end
