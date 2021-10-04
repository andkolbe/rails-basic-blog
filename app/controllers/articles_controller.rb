class ArticlesController < ApplicationController
  # when an action does not explicity render a view (or otherwise trigger a HTTP response), Rails will automatically render a view that matches the name 
  # of the controller and action. Convention over Configuration
  def index
    # @articles is called a controller instance variable. They can be accessed by the view
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
