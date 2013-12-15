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
    
    # set answered state of topic to true if first answer
    if @answer.topic.answers.count == 0
      @answer.topic.answered = true
      @answer.topic.save
    end

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

    if answer.topic.answers.count <=1
      answer.topic.answered = false
      answer.topic.save
    end
    
    answer.delete
    redirect_to answer.topic
  end

  def vote_up
    @answer = Answer.find params[:id]
    current_user.vote_for(@answer)
    redirect_to @answer.topic
  end

  def vote_down
    @answer = Answer.find params[:id]
    current_user.vote_against(@answer)
    redirect_to @answer.topic
  end
  
end


