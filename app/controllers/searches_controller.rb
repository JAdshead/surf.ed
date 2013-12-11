class SearchesController < ApplicationController

  def create
    query_terms = params[:query].split.join("|")
    @topics = Topic.advanced_search query_terms
    render :index
  end

end