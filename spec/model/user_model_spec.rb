require "rails_helper"

RSpec.describe User, :type => :model do
  context "create an user" do
    it "an admin" do
      role = Role.create(name: 'Admin')	
      user = User.create(name: 'Neelima', password: 'hihihi', email: 'neelima@neelima.com', role_id: role.id)
      expect(user.role.name).to eq('Admi')
    end
  end
end
