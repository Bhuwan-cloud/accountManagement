Rails.application.routes.draw do
  
  
  resources :inventories
  resources :clients
  resources :teams
  resources :homepages
  devise_for :users
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'

  
end