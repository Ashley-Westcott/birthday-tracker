Rails.application.routes.draw do

  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'


  resources :sessions
  resources :users, only: [:index, :show, :create, :new, :destroy, :edit, :update]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  post '/sessions/:id',  to: 'sessions#destroy'
  # get    '/signup',  to: 'users#new'
  # post    '/signup',  to: 'users#new'
  # delete '/logout',  to: 'sessions#destroy'
  # get    '/users/:id/edit', to: 'users#edit'
  # patch  '/users/:id', to: 'users#update'
  # delete  '/users/:id/edit', to: 'users#destroy'
  # get 'users/new', to: "users#new", as: "signup"
  # post 'users/new', to: "users#create"
  # resources :friendships, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
