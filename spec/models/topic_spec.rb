require "spec_helper"

describe Topic do 
  describe "Validations" do 
    it {should validate_presence_of(:question)}
  end
end