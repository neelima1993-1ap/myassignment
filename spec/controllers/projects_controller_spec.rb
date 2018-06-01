require "rails_helper"

RSpec.describe ProjectsController do

  describe "GET index" do
    it "ProjectsController" do
      sign_in User.first
      @projets = Project.all
      get :index
      expect(response).to render_template("index")
    end
  end  

end
