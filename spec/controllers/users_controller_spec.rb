require "rails_helper"

RSpec.describe UsersController do

  describe "GET index" do
    it "UsersController with sign in" do
      sign_in User.first
      @users = User.all
      get :index
      expect(response).to render_template("index")
    end
  end  


  describe "GET index " do
    it "UsersController without sign in" do
      @users = User.all
      get :index
      expect(response).to redirect_to("/users/sign_in")
    end
  end  

end