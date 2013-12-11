class AnswersController < ApplicationController

  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    @answer.topic_id = params[:topic_id]
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to @answer.topic
    else
      @topic = Topic.find params[:topic_id]
      render :template => "topics/show"
    end
  end

  def edit
  end

  def update
    @answer.update_attributes params[:answer]
    redirect_to @answer.topic
  end

  def destroy
    answer = Answer.find params[:id]
    answer.delete
    redirect_to answer.topic
  end
  
end


