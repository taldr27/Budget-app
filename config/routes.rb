Rails.application.routes.draw do
  devise_for :users
  resources :deal_groups
  resources :groups
  resources :deals
  resources :users
  root 'users#index'
  get 'home/index'
  get 'home/about'
end
