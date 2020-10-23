Rails.application.routes.draw do
  root to: 'articles#index'

  get 'sessions/new'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  resources :categories, only: [:index, :show]
  resources :articles do
    post '/vote/', to: 'votes#create'
    delete '/vote/', to: 'votes#destroy'
  end
  resources :users, except: [:index, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
