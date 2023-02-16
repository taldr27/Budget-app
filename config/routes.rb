Rails.application.routes.draw do
  resources :deal_groups
  resources :groups
  resources :deals
  resources :users
  root 'home#index'
  get 'home/index'
  get 'home/about'
end
