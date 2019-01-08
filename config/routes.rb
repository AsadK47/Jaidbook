# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'profiles/show'
  devise_for :users
  resources :posts
  # map.resources :friendships

  # root 'posts#index', as: 'home'
  root 'profiles#show', as: 'home'
  get 'users/all', to: 'users#index'
  get 'users/:id', to: 'users#show', as: :profile
  resources :posts do
    resources :comments
  end
end
