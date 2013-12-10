class QuestionsController < ApplicationController
  
  load_and_authorize_resource
  
  def new
    @question = Question.new
  end

  def create
    @question.user = current_user
    @question.save
    redirect_to @question
  end

end