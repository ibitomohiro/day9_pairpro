Rails.application.routes.draw do
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs
  resources :users, only: [:new, :create, :show]
  root to: 'blogs#index'
end
