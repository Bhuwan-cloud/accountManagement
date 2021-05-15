Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  get 'homepages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'
  
end