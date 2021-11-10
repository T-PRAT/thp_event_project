Rails.application.routes.draw do
  root to: 'event#index'

  resources :event
  resources :user
  devise_for :users
end
