# frozen_string_literal: true

Rails.application.routes.draw do
  root 'core#index'
  resources :core, only: :index
  resources :orders
  resources :ingredients, except: :index
  resources :dishes
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
