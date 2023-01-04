Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'

  resources :games do
   resources :communications
  end
  
  resources :users
  
end
