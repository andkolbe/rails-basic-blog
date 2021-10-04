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

  # the new action instantiates a new article, but does not save it. This article will be used in the view when building the form
  def new
    @article = Article.new
  end

  # the create action instantiates a new article with values for the title and body, and attempts to save it
  def create
    @article = Article.new(title: '...', body: '...')

    if @article.save
      # redirect_to will cause the browser to make a new request, whereas render renders the specified view for the current request
      # It is important to use redirect_to after mutating the database or application state. 
      # Otherwise, if the user refreshes the page, the browser will make the same request, and the mutation will be repeated
      redirect_to article
    else
      render :new
  end

end
