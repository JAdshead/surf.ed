class HomeController < ApplicationController

  def index
    @users = User.all
    @topics = Topic.plusminus_tally.order('plusminus_tally DESC').all
    @unanswered = Topic.where(answered: false)
  end

end