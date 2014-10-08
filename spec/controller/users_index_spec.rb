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
end
