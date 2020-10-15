Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'articles#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :categories
  resources :articles
  # resources :articles do
  #   resource :vote, controller => 'articles/vote'
  # end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
