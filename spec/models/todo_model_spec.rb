require "rails_helper"

RSpec.describe Todo, :type => :model do
  context "create a Todo" do
    it "for the first project and first user" do
      role = Role.create(name: 'Developer')	
      user = User.create(name: 'testuser', password: 'testuser', email: 'testuser@gmail.com',  role_id: role.id)
      project = Project.create(name: 'xyz')
      todo = Todo.create(name: 'todo_test', description: "todo test sample",  project_id: project.id , user_id: user.id)
      expect(todo.status).to eq('new')
    end
  end
end
