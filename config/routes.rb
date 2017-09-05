Rails.application.routes.draw do
  resources :pins
  devise_for :users
  devise_for :models
  devise_for :views
  root 'home#index'
  get 'home/about'
  get 'home/dane'
  get 'home/uploader'

  
end
