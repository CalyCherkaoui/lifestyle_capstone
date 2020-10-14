Rails.application.routes.draw do
  root to: 'articles#index'

  resources :categories
  resources :articles
  # resources :articles do
  #   resource :vote, controller => 'articles/vote'
  # end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
