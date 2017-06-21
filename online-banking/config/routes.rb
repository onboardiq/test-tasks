Rails.application.routes.draw do
  root to: "money_transfers#index"

  devise_for :users

  resources :money_transfers
  resources :users, only: [:show]
end
