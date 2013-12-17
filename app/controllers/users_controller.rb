class UsersController < Devise::RegistrationsController
  
  load_and_authorize_resource
  def show
    @user = User.find(params[:id])
    @starred = @user.starred.paginate(page: params[:starred_page], per_page: 2).order("updated_at DESC").all
    @user_questions = @user.topics.paginate(page: params[:questions_page], per_page: 2).order("score DESC").all
    @answers = @user.answers.paginate(page: params[:answered_page], per_page: 2).all
  end
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
