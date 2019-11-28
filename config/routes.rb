Rails.application.routes.draw do
  devise_for :users 
  resources :users do
    resources :carts
  end
  root 'items#index'
  resources :items
  resources :orders
  resources :charges
  get 'mon_panier', to: 'carts#show'
end
