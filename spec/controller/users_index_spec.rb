require_relative '../rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "Get the users index page" do
    it "should return 200 status when user loads page" do 
      #arrange
      get :index
      # #act
      # #assert
      expect(response.status).to eq(200)
    end
  end
  
  describe "Get users profile page " do 
    it "returns 200 status when users link is clicked on" do
      user = User.create(first_name: "Joe")
      get :show, :id => user.id
      expect(response).to be_success
      expect(assigns(:user)).to eq(user)
    end
    
    it "displays name of the user" do 
      user = User.create(first_name: "Joe")
      get :show, :id => user.id
      expect(assigns(:user).first_name).to eq("Joe")
    end
  end
end
