Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'

  resources :users, only: :show
end
