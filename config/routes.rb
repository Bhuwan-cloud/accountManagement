Rails.application.routes.draw do
  
  
  # get 'invoices/index'
  get 'softwares/index'
  get 'networks/index'
  get 'networking_items/index'
  #get 'quotations/index'
  # get 'estimates/index'
  resources :invoices
  resources :quotations
  resources :estimates
  resources :inventories
  resources :clients
  resources :teams
  resources :homepages
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'

  
end