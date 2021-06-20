Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
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
  get    '/clients', to: 'static#clients'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/api' => redirect('/swagger/dist/index.html?url=/api-docs.json')

end
