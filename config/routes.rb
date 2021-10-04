Rails.application.routes.draw do
  # display this on the root path "/"
  root "articles#index"
  
  resources :articles do
    resources :comments # this creates comments as a nested resource within articles
  
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
