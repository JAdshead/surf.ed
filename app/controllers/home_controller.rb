class HomeController < ApplicationController

  def index
    @users = User.all
    @topics = Topic.all    
  end

end