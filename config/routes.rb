Rails.application.routes.draw do


  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :clientes
  devise_for :clientes
end