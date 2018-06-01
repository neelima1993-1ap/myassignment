require "rails_helper"

RSpec.describe TodosController do

  describe "GET index" do
    it "TodosController" do
      sign_in User.first
      @todos = Todo.all
      get :index
      expect(response).to render_template("index")
    end
  end  

end
