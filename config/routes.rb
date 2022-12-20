Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'
  
  resources :games
  resources :users, only: :show
end
