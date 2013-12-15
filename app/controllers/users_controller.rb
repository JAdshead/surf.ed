class UsersController < Devise::RegistrationsController
  
  load_and_authorize_resource
  def show
    @user = User.find(params[:id])
  end
  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    User.update_score(current_user)
  end

end
