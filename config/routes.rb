Rails.application.routes.draw do
  resources :orders
  resources :payments
  resources :products
  resources :customers
  resources :suppliers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
