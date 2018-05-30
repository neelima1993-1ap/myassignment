class AddStatusAndProjectIdToTodo < ActiveRecord::Migration[5.2]
  def change
  	    add_column :todos, :status, :string, default: 'new'
  	    add_column :todos, :project_id, :integer
  end
end
