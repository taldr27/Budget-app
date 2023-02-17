Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
  }
  resources :deal_groups
  resources :groups
  resources :deals
  resources :users
  root 'home#index'
  get 'home/index'
  get 'home/about'
end
