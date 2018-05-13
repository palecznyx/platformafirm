Rails.application.routes.draw do

  get 'sitemap/index'

  resources :pins
  devise_for :users
  devise_for :models
  devise_for :views
  root 'home#index'
  get 'home/about'
  get 'home/dane'
  get 'home/uploader'

  resources :messages, only: [] do
    collection do
      get :prepare_send
      post :send_email
    end
  end
end
