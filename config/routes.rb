Rails.application.routes.draw do
  # display this on the root path "/"
  root "articles#index"
  # GET /articles requests are mapped to the index action of ArticlesController
  get '/articles', to: 'articles#index'

  get '/articles/:id', to: "articles#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
