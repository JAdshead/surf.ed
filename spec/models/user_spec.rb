require "spec_helper"

describe User do 

    

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should ensure_length_of(:name).is_at_least(3) }
    it { should ensure_length_of(:password).is_at_least(8) }

    it { should respond_to(:name) }
    it { should respond_to(:role) }
    it { should respond_to(:email) }
    it { should respond_to(:avatar) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    it { should respond_to(:remember_me) }


    # let!(:user) { User.create(name: "name", email: "test@test.com", password: "thisisatest")}
    # subject { user }

    its(:role) { should_not be "admin"}
    its(:role) { should be "user"}
    its(:role) { should_not be_nil}
    its(:score) { should be 0}
    its(:invitation_limit) {should be 3}


    # it 'update_score should update score' do 
    #   user = User.create
    #   expect { User.update_score(user) }.to change { user.score }.from(0)
    # end
end