class HomeController < ApplicationController

  def index
    User.update_score(current_user)
    @users = User.order("score DESC").all
    @topics = Topic.order("score DESC").all
    @unanswered = Topic.order("score DESC").where(answered: false)
  end

end