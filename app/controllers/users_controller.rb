class UsersController < Devise::RegistraionController

  def index
    @users = User.all
  end

  def create 
    super
    # adding role to user 
    @user.role = 'user'
    @user.save!
  end

end
