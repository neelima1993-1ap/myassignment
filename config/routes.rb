Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  root to: 'dashboard#index'

  resources :dashboard, only: [:index]
  resources :users
  resources :projects
  resources :todos
  
end