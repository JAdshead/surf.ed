require "spec_helper"

describe HomeController do
  describe "GET index" do
    # defining a variable for the scope of the test
    # and creating 3 instances of the object we're testing
    let!(:users) { 3.times map{|index| User.create(name: "user #{index}")}}

    #writing tests
    it "should instantiate @users with all users in the database" do
      get :index
      expect(assigns[:users]).to eq(users)
    end
  end
  
  # an example of the use of "let" instead of “let!”
  # describe "POST create" do
  #   let(:ingredient_data) {{name: "boom", image: "rofl"}}
  #   it "should instantiate @ingredients with all ingredients in the database" do 
  #     post :create, params: {ingredient: ingredient_data}
  #     expext(assigns[:ingredients]).to eq(ingredients)
  #   end
  # end

end