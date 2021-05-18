Rails.application.routes.draw do
  #get 'sessions/new'
  resources :orders
  resources :payments
  resources :products
  resources :customers
  resources :suppliers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
