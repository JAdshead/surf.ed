class HomeController < ApplicationController

  def index
    @users = User.all
    @topics = Topic.order("score DESC").all
    @unanswered = Topic.order("score DESC").where(answered: false)
  end

end