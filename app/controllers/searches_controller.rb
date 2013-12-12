class SearchesController < ApplicationController

  def create
    query_terms = params[:query]
    @topics = Topic.fuzzy_search query_terms
    render :index
  end


end