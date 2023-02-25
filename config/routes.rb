Rails.application.routes.draw do
  devise_for :users

  root 'users#splash'
  resources :users, only: [:splash]
  resources :groups, only: [:index, :new, :create, :edit, :update, :destroy], :path => "categories" do 
    resources :expenses, only: [:index, :new, :create, :edit, :update, :destroy], :path => "transactions"
  end
end
