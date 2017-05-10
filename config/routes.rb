Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  devise_for :views
  root 'home#index'
  get 'home/about'

  
end
