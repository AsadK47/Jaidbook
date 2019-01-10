# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users
  resources :posts
  resources :friendships
  resources :follows

  root 'posts#index', as: 'home'
  get 'users/all', to: 'users#index'
  get 'users/:id', to: 'users#show', as: :profile
  post 'users/follow', to: 'users#follow'
  resources :posts do
    resources :likes
    resources :comments
  end
end
