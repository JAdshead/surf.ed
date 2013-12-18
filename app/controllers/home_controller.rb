class HomeController < ApplicationController

  def index
    @users = User.paginate(page: params[:user_page], per_page: 5).order("score DESC").all
    @topics = Topic.paginate(page: params[:topic_page], per_page: 5).order("score DESC").where(answered: true)
    @unanswered = Topic.paginate(page: params[:unanswered_page], per_page: 5).order("score DESC").where(answered: false)
  end

end