Rails.application.routes.draw do
  
  
  resources :inventories
  resources :clients
  resources :teams
  resources :homepages
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'

  
end