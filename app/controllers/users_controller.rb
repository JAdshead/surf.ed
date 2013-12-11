class UsersController < Devise::RegistrationsController
  
  load_and_authorize_resource
  
  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
  end

end
