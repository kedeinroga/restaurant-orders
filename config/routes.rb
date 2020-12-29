Rails.application.routes.draw do
  root 'orders#index'
  resources :orders
  resources :ingredients
  resources :dishes
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
