Rails.application.routes.draw do
  # display this on the root path "/"
  root "articles#index"
  
  resources :articles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
