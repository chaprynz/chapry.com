Rails.application.routes.draw do
  get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'home#index'
  
  resources :category do 
    resources :post, only: [:show]
  end
  
  resources :book do 
    resources :bookpost, only: [:show]
  end
  
  
  get '/book' => 'book#index'
  get '/article' => 'category#index'
end
