require "spec_helper"

describe User do

  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:email)}
    it {should ensure_length_of(:name).is_at_least(3).with_message(/name is too short/)}
  end

  

end
