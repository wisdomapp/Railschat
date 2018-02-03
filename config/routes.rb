Rails.application.routes.draw do
  resources :board_messages
  resources :board_users
  devise_for :accounts
  root to: 'board_messages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
