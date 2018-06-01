require "rails_helper"

RSpec.describe Project, :type => :model do
  context "create a Project" do
    it "assign to a developer" do
      role = Role.create(name: 'Developer')	
      user = User.create(name: 'testuser', password: 'testuser', email: 'testuser@gmail.com',  role_id: role.id)
      project = Project.create(name: 'xyz')
      project.users << user
      expect(project.users.any?).to eq(true)
    end
  end
end
