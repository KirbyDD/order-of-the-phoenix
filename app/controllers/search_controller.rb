class SearchController < ApplicationController
  def index
    @members = SearchResults.new(params[:house]).house_members
  end
end
